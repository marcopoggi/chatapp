class MessagesController < ApplicationController
  def index
    @messages = Message.all
  end

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(params[:message])
    if @message.save
      flash[:success] = 'message successfully created'
      redirect_to messages_path, status: :created
    else
      flash[:error] = 'message not created'
      render 'new', status: :unprocessable_entity
    end
  end
end
