class Post < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :comments
  has_many :likes
  validates :title, length: { maximum: 250 }, presence: true
  validates :text, length: { maximum: 300 }, presence: true
  validates :likes_count, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :comments_count, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  after_save :update_post_counter

  def return_last_five_comments
    comments.order('created_at Desc').last(5)
  end

  def update_all_counters
    update_like_counter
    update_comment_counter
    update_post_counter
  end

  private

  def update_post_counter
    author.update(posts_count: author.posts.count)
  end

  def update_like_counter
    update(likes_count: likes.count)
  end

  def update_comment_counter
    update(comments_count: comments.count)
  end
end
