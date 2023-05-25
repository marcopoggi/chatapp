class ConversationsController < ApplicationController
  before_action :set_conversation, only: [:show]

  def index
    @conversations = current_user.conversations
  end

  def show
    redirect_to root_path if @conversation.nil?
  end

  private

  def set_conversation
    @conversation = current_user.conversations.find_by(id: params[:id])
  end
end
