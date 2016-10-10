class PinsController < ApplicationController

  def show
    @pin = Pin.find(params[:id])
    @comments = @pin.comments
  end

  def new
    @user = User.find(params[:user_id])
    @board = Board.find(params[:board_id])
    @pin = Pin.new
  end

  def create
    @user = User.find(params[:user_id])
    @board = Board.find(params[:board_id])
    @pin = @board.pins.create!(strong_params)
    redirect_to user_board_pin_path(@user, @board, @pin)
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def strong_params
    params.require(:pin).permit(:title, :image_url)
  end
end
