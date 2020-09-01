class ConversationsController < ApplicationController
  before_action :set_conversations, only: [:index, :show]

  def index
  end

  def show
    @conversation = Conversation.find(params[:id])
    @messages     = @conversation.messages
    @message      = Message.new
  end

  def new
  end

  def create
  end

  private

  def set_conversations
    @conversations = Conversation.where(
      "user1_id = :current_user_id OR user2_id =:current_user_id",
      current_user_id: current_user.id
    )
  end
end
