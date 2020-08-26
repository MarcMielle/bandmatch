class Preference < ApplicationRecord
  INSTRUMENTS  = ["guitare", "voix"]
  MUSIC_STYLES = ["rock", "jazz"]

  belongs_to :entity, polymorphic: true

  validates :instrument, inclusion: { in: Preference::INSTRUMENTS }
  validates :music_style, inclusion: { in: Preference::MUSIC_STYLES }
end
