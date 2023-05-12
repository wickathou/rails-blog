class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :author, class_name: 'User'

  after_save :update_comment_counter

  private

  def update_comment_counter
    author.update(comments_count: author.comments.count)
    post.update(comments_count: post.comments.count)
  end
end
