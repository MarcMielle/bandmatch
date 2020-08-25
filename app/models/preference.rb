class Preference < ApplicationRecord
  belongs_to :entity, polymorphic: true
end
