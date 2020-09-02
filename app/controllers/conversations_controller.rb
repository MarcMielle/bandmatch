class ConversationsController < ApplicationController
  before_action :set_conversations, only: [:index, :show]

  def index
  end

  def show
    @conversation = Conversation.find(params[:id])
    @messages     = @conversation.messages
    @message      = Message.new
    @band         = current_user.band
  end

  def new
  end

  def create
    @interlocutor = User.find(params[:musician_id])
    @conversation = Conversation.new
    @conversation.user1 = current_user
    @conversation.user2 = @interlocutor
    if @conversation.save!
      redirect_to conversation_path(@conversation)
    else
      render "conversations/show"
    end
  end

  private

  def set_conversations
    @conversations = Conversation.where(
      "user1_id = :current_user_id OR user2_id =:current_user_id",
      current_user_id: current_user.id
    )
  end
end
