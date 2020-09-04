class Conversation < ApplicationRecord
  belongs_to :user1, class_name: "User"
  belongs_to :user2, class_name: "User"

  has_many :messages
  # has_one :last_message, -> { order(created_at: :desc) }, class_name: 'Message'

  def other_user_than(user)
    user == user1 ? user2 : user1
  end

  def last_message
    @last_message ||= messages.order(created_at: :desc).first
  end
end
