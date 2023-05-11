class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user

  after_save :update_comment_counter

  private

  def update_comment_counter
    user.comments_count = user.comments.count
    user.save
    post.comments_count = post.comments.count
    post.save
  end
end
