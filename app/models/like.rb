class Like < ApplicationRecord
  belongs_to :post
  belongs_to :user

  after_save :update_like_counter

  private

  def update_like_counter
    user.update(likes_count: user.likes.count)
    post.update(likes_count: post.likes.count)
  end
end
