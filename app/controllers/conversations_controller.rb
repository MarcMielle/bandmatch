class ConversationsController < ApplicationController
  def index
    @conversations = Conversation.all
    # not all just mine
  end

  def show
  end

  def new
  end

  def create
  end
end
