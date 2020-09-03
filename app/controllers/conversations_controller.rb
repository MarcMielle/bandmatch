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

    condition = <<~SQL
      (user1_id = :current_user_id AND user2_id = :interlocutor_id)
      OR
      (user1_id = :interlocutor_id AND user2_id = :current_user_id)
    SQL

    @conversation = Conversation.where(condition, current_user_id: current_user.id, interlocutor_id: @interlocutor.id).first_or_initialize

    if @conversation.save!
      redirect_to conversation_path(@conversation)
    else
      render "conversations/show"
    end
  end

  private


# ordonner messages d'une conversation
# selectionner dernier message
# ordonner les conversations en fonction du dernier message

  def set_conversations
    conversations = Conversation.where(
      "user1_id = :current_user_id OR user2_id =:current_user_id",
      current_user_id: current_user.id
    )

    @conversations = conversations.sort_by do |conversation|
      last_message = conversation.last_message

      if last_message
        last_message.created_at
      else
        Time.zone.now
      end
    end

    @conversations.reverse!
  end
end
