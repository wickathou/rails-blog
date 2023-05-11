class Post < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :comments
  has_many :likes
  validates :title, length:{maximum: 100}, presence: true
  validates :text, length: { maximum: 300 }, presence: true
end
