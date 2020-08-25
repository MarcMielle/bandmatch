class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :preference, as: :entity
  has_many :messages, foreign_key: :author_id

  def conversations
    Conversation.where('user1_id = :id OR user2_id = :id', id: id)
  end
end
