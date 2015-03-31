class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "Successfully logged in."
      redirect_to user_path(@user)
    else
      flash[:alert] = "!ERROR! The form is incomplete."
      @users = User.all
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
    @posts = Post.all
    render :show
  end

private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

end
