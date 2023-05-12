class User < ApplicationRecord
  has_many :posts, foreign_key: :author_id
  has_many :comments, foreign_key: :author_id
  has_many :likes, foreign_key: :author_id
  has_many :liked_posts, through: :likes, source: :post
  has_many :liked_comments, through: :likes, source: :comment
  validates :name, length: { maximum: 100 }, presence: true
  validates :bio, length: { maximum: 300 }, allow_blank: true
  validates :posts_count, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :likes_count, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :comments_count, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  has_one :picture

  before_save :default_values

  def update_counters
    update(posts_count: posts.count, likes_count: likes.count, comments_count: comments.count)
  end

  def return_last_three_posts
    posts.order('created_at Desc').last(3)
  end

  private

  def default_values
    self.picture_id ||= Picture.create.id
  end
end
