class UsersController < ApplicationController

  def index
    @users = User.all
    render :index
  end

  def show
    @user = User.find(params[:id])
    render :show
  end

  def new
    @user = User.new
    render :new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:notice] = "Your user name has been established."
      redirect_to "/users"
    else
      flash[:alert] = "!ERROR! Please establish a user name."
      redirect_to :back
    end
  end

end
