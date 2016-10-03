class UsersController < ApplicationController

  # before_action :check_logged_in, except: [:new]
  # before_action :find_user, except: [:new]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to user_path(@user)
    else
      render 'new'
    end
  end

  def show
  end

  def comments
  end

  private
  def find_user
    @user ||= User.find_by(params[:id])
  end

  def user_params
    params.require(:user).permit(:username, :password)
  end

end
