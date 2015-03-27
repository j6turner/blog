class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
    @users = User.all
    render :new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:notice] = "Your user name has been established."
      redirect_to user_path(@user)
    else
      flash[:alert] = "!ERROR! Please establish a user name."
      @users = User.all
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
    render :show
  end

private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end

end
