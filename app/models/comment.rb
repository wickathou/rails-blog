class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user

  after_save :update_comment_counter

  def update_comment_counter
    self.user.comments_count = self.user.comments.count
    self.user.save
    self.post.comments_count = self.post.comments.count
    self.post.save
  end
end
