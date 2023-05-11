class Like < ApplicationRecord
  belongs_to :post
  belongs_to :user

  after_save :update_like_counter

  def update_like_counter
    user.likes_count = user.likes.count
    user.save
    post.likes_count = post.likes.count
    post.save
  end
end
