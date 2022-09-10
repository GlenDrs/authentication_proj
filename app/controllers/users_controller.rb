class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params_user)
    if @user.save
      redirect_to '/'
    else
      render :new
    end
  end

  def delete
  end

  private
  def params_user
    params.require(:user).permit(:email, :password_digest)
  end

end
