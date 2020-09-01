class Conversation < ApplicationRecord
  belongs_to :user1, class_name: "User"
  belongs_to :user2, class_name: "User"

  has_many :messages

  def other_user_than(user)
    user == user1 ? user2 : user1
  end
end
