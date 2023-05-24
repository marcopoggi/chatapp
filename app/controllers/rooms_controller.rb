class RoomsController < ApplicationController
  before_action :set_room, only: %i[show edit]

  def index
    @rooms = Room.all
  end

  def show
    @messages = @room.messages
  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.new(room_params)

    if @room.save
      flash[:success] = 'room created'
      redirect_to rooms_path, status: :created
    else
      flash[:error] = 'room not created'
      render 'new', status: :unprocessable_entity
    end
  end

  def edit; end

  def update; end

  def destroy; end

  private

  def room_params
    params.require(:room).permit(:name)
  end

  def set_room
    @room = Room.find(params[:id])
  end
end
