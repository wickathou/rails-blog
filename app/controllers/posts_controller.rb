class PostsController < ApplicationController
  def index;
    @user = User.find(params[:user_id])
    @posts = @user.posts
  end

  def show;
    # @post = Post.find('80a4bdfd-9f89-4c42-b61c-01f9be739b19')
    @post = Post.find(params[:id])
    @user = @post.author
    @comments = @post.comments
    @likes = @post.likes
  end
end
