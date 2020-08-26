class Band < ApplicationRecord
  has_many :users
  has_one :preference, as: :entity

  validates :music_style, inclusion: { in: Preference::MUSIC_STYLES }
end
