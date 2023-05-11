class Post < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :comments
  has_many :likes
  validates :title, length: { maximum: 100 }, presence: true
  validates :text, length: { maximum: 300 }, presence: true

  after_save :update_post_counter

  def update_post_counter
    author.posts_count = author.posts.count
    author.save
  end

  def return_last_five_comments
    comments.last(5)
  end
end
