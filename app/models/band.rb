class Band < ApplicationRecord
  has_many :users
  has_one :preference, as: :entity
end
