class PostsController < ApplicationController

  def index
    @posts = Post.all
    @user = User.find(params[:id])
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    if current_user
      @post = Post.new
    else
      flash[:alert] = "You must log in to post."
      redirect_to posts_path
    end
  end

  def create
    @post = Post.new(post_params)
    @post.date = Date.today
    @post.user_id = current_user.id
    if @post.save
      flash[:notice] = "Published."
      redirect_to posts_path
    else
      flash[:alert] = "Post not submitted. Try again."
      redirect_to :back
    end
  end

  private
  def post_params
    params.require(:post).permit(:name, :content, :user_id)
  end

end
