class Picture < ApplicationRecord
  validates :picture_uri, presence: true

  before_save :placeholder_picture

  def placeholder_picture
    self.picture_uri ||= 'https://picsum.photos/200/300'
  end
end
