class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :band, optional: true
  has_one :preference, as: :entity
  has_many :messages, foreign_key: :author_id

  validates :instrument, inclusion: { in: Preference::INSTRUMENTS }

  validate :music_styles_included_in_list

  def conversations
    Conversation.where('user1_id = :id OR user2_id = :id', id: id)
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
end
