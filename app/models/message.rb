class Message < ApplicationRecord
  belongs_to :conversation
  belongs_to :author, class_name: 'User'

  def current_user_author(conversation, current_user)
    current_user.id == conversation.user1_id ? conversation.user2 : conversation.user1
  end
end
