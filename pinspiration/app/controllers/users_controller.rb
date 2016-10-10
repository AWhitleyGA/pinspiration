class UsersController < ApplicationController
  def index
    @users = User.all
  end
  def show
    @user = User.find(params[:id])
    @boards = @user.boards
  end
  def new
    @user = User.new
  end
  def create
    @user = User.create!(strong_params)
    redirect_to user_path(@user)
  end

  private
  def strong_params
    params.require(:user).permit(:email, :username, :password)
  end
end
