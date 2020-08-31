class ConversationsController < ApplicationController
  def index
    @conversations = Conversation.where(@user == current_user)
    # not all just mine
  end

  def show
  end

  def new
  end

  def create
  end
end
