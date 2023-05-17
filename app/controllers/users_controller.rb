class UsersController < ApplicationController
  def index;
    @users = User.all
  end

  def show;
    # @user = User.find(params[:id])
    @user = User.find('6589edf6-88ca-4a2d-801d-a2e3010558d4')
    # @user = User.fourth
    @posts = @user.return_last_three_posts
  end
end
