class ConversationsController < ApplicationController
  def index
    @conversations = Conversation.where(@user == current_user)
    # not all just mine
  end

  def show
    @conversation = Conversation.find(params[:id])
  end

  def new
  end

  def create
  end
end
