class PostsController < ApplicationController
  def index;
    @user = User.find('6589edf6-88ca-4a2d-801d-a2e3010558d4')
    @posts = @user.posts
  end

  def show;
    @post = Post.find('80a4bdfd-9f89-4c42-b61c-01f9be739b19')
    @comments = @post.comments
    @likes = @post.likes
  end
end
