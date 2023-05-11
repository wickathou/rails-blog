class User < ApplicationRecord
  has_many :posts
  has_many :comments
  has_many :likes
  has_many :liked_posts, through: :likes, source: :post
  has_many :liked_comments, through: :likes, source: :comment
  validates :name, length:{maximum: 100}, presence: true
  validates :bio, length: { maximum: 300 }, allow_blank: true
  has_one :picture

  before_save :default_values

  def default_values
    self.picture_id ||= Picture.first.id
  end
end
