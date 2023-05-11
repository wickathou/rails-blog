class Picture < ApplicationRecord
  validates :picture_uri, presence: true
end
