class BoardsController < ApplicationController
  def show
    @user = User.find(params[:user_id])
    @board = Board.find(params[:id])
    @pins = @board.pins
  end

  def new
    @user = User.find(params[:user_id])
    @board = Board.new
  end

  def create
    @user = User.find(params[:user_id])
    @board = @user.boards.create!(strong_params)
    redirect_to user_board_path(@user, @board)
  end

  def edit
    @user = User.find(params[:user_id])
    @board = Board.find(params[:id])
  end

  def update
    @user = User.find(params[:user_id])
    @board = Board.find(params[:id])
    @board.update(strong_params)
    redirect_to user_board_path(@user, @board)
  end

  def destroy
    @user = User.find(params[:user_id])
    @board = Board.find(params[:id])
    @board.destroy
    redirect_to user_path(@user)
  end

  private
  def strong_params
    params.require(:board).permit(:topic)
  end
end
