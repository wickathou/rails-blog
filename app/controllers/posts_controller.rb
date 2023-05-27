class PostsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @posts = @user.posts
  end

  def show
    # @post = Post.find('80a4bdfd-9f89-4c42-b61c-01f9be739b19')
    @post = Post.find(params[:id])
    @user = @post.author
    @comments = @post.comments
    @likes = @post.likes
  end

  def create
    @user = User.find(params[:user_id])
    @post = @user.posts.create(post_params)
    puts @post
    # redirect_to user_posts_path(@user)
  end

  private

  def post_params
    params.require(:post).permit(:title, :text)
  end
end
