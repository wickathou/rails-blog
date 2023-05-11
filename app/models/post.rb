class Post < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :comments
  has_many :likes
  validates :title, length:{maximum: 100}, presence: true
  validates :text, length: { maximum: 300 }, presence: true

  after_save :update_post_counter

  def update_post_counter
    self.author.posts_count = self.author.posts.count
    self.author.save
  end

  def return_last_five_comments
    self.comments.last(5)
  end
end
