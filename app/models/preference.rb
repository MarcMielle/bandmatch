class Preference < ApplicationRecord
  INSTRUMENTS  = ["guitare", "chant", "batterie", "basse", "piano", "violon", "dj", "flute",\
                  "trompette", "hautbois", "ukulele", "banjo", "trombonne", "saxophone", "tuba",\
                  "harpe", "clarinette", "cor", "harmonica", "violoncelle"]
  MUSIC_STYLES = ["rock", "jazz", "pop", "house", "classique", "folk", "funk",\
                  "blues", "rap", "reggae", "country", "metal", "electro"]

  belongs_to :entity, polymorphic: true

  validates :instrument, inclusion: { in: Preference::INSTRUMENTS }
  validates :music_style, inclusion: { in: Preference::MUSIC_STYLES }
end
