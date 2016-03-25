class SessionsController < ApplicationController

  def new
  end

  def create
    @user = User.find_by(email: params[:email].downcase)

    # if the user exists AND the password entered is correct
    if @user && @user.authenticate(params[:password])
       session[:user_id] = @user.id
       redirect_to posts_path
    else
       redirect_to comments_path
    end
  end

  def destroy
    session[:user_id] = nil
    @user = nil
    redirect_to login_path
  end

end
