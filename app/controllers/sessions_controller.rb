class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.find_by(email: user_params[:email])
    if @user && @user.password == user_params[:password]
      cookies[:user_id] = @user.id
      redirect_to roo_path
    else
      flash.now[:notice] = "Invalid pw or email! "
      render new_sessions_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end

  private
  def user_params
    params.require(:user).permit(:email, :password_digest)
  end
end
