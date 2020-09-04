class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :band, optional: true
  has_one :preference, as: :entity
  has_one_attached :avatar
  has_many :messages, foreign_key: :author_id
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  validates :instrument, inclusion: { in: Preference::INSTRUMENTS }

  validate :music_styles_included_in_list

  def conversations
    Conversation.where('user1_id = :id OR user2_id = :id', id: id)
  end

  def filtered_musicians_with_affinity_score(user_scope = User.all)
    user_scope.select('users.*', "#{affinity_query} AS affinity_score").where(filters_query, {
      instrument: default_preferences.instrument,
      age_min:    default_preferences.age_min,
      age_max:    default_preferences.age_max,
      gender:     default_preferences.gender
    }).order('affinity_score DESC').near(default_preferences.location, default_preferences.location_radius_in_km)
  end

  def default_preferences
    band&.preference || preference
  end

  private

  def music_styles_included_in_list
    # no styles selected -> we skip the validation
    return if music_styles.blank?

    # returns an array of the music styls that are present in MUSIC_STYLES
    matching_styles = music_styles & Preference::MUSIC_STYLES

    if music_styles.count > matching_styles.count
      errors.add(:music_styles, :inclusion)
    end
  end

  def filters_query
    <<~SQL
      users.instrument = :instrument
      AND
      users.age >= :age_min
      AND
      users.age <= :age_max
      AND
      users.gender = :gender
    SQL
  end

  def affinity_query
    <<~SQL
      (
        (CASE WHEN '#{default_preferences.music_style}' = ANY (users.music_styles) THEN 100 ELSE 50 END) +
        (
          CASE WHEN users.years_of_experience >= #{default_preferences.years_of_experience_min}
          THEN 0
          ELSE (users.years_of_experience - #{default_preferences.years_of_experience_min}) * 4
          END
        ) +
        (
          CASE WHEN users.weekly_rehearsal_frequency >= #{default_preferences.weekly_rehearsal_frequency_min}
          THEN 0
          ELSE (users.weekly_rehearsal_frequency - #{default_preferences.weekly_rehearsal_frequency_min}) * 7
          END
        )
      )
    SQL
  end
end
