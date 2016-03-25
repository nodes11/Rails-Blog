class UsersController < ApplicationController
  def new
  end

  def create
    user = User.new(user_params)
    if user.save
      user.authenticate(:password)
      session[:user_id] = user.id
      redirect_to posts_path
    else
      redirect_to signup_path
    end
  end

  def index
    @users = User.all
  end

  def admin
    user = User.find params[:id]
    user.isAdmin = 1
    user.save
    redirect_to users_path
  end

  def show
    @user = User.find params[:id]
    @posts = @user.posts.where(user_id: @user.id).all
  end

private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :isAdmin)
  end
end
