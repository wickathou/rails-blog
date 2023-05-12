class Like < ApplicationRecord
  belongs_to :post
  belongs_to :author, class_name: 'User'

  after_save :update_like_counter

  private

  def update_like_counter
    author.update(likes_count: author.likes.count)
    post.update(likes_count: post.likes.count)
  end
end
