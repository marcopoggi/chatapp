class MessagesController < ApplicationController
  before_action :set_conversation

  def index
    @messages = @conversation.messages
  end

  def new
    @message = @conversation.messages.new
  end

  def create
    @message = @conversation.messages.new(message_params)
    if @message.save
      respond_to do |format|
        format.html { redirect_to @conversation, notice: 'message created' }
        format.turbo_stream
      end
    else
      flash[:error] = 'message not created'
      render 'new'
    end
  end

  private

  def message_params
    @params = params.require(:message).permit(:content)
    @params[:user] = current_user
    @params
  end

  def set_conversation
    @conversation = current_user.conversations.find(params[:conversation_id])
    redirect_to conversations_path if @conversation.nil?
  end
end
