class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user

  after_save :update_comment_counter

  private

  def update_comment_counter
    user.update(comments_count: user.comments.count)
    post.update(comments_count: post.comments.count)
  end
end
