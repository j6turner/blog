class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    binding.pry
    @user = User.new(user_params)
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
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

end
