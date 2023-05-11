class User < ApplicationRecord
  has_many :posts, foreign_key: :author_id
  has_many :comments
  has_many :likes
  has_many :liked_posts, through: :likes, source: :post
  has_many :liked_comments, through: :likes, source: :comment
  validates :name, length: { maximum: 100 }, presence: true
  validates :bio, length: { maximum: 300 }, allow_blank: true
  has_one :picture

  before_save :default_values

  def update_counters
    update(posts_count: posts.count, likes_count: likes.count, comments_count: comments.count)
  end

  def return_last_three_posts
    posts.last(3)
  end

  private

  def default_values
    self.picture_id ||= Picture.create.id
  end
end
