class Like < ApplicationRecord
  belongs_to :post
  belongs_to :user

  after_save :update_like_counter

  def update_like_counter
    self.user.likes_count = self.user.likes.count
    self.user.save
    self.post.likes_count = self.post.likes.count
    self.post.save
  end
end
