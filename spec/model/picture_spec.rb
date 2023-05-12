require_relative '../rails_helper'

RSpec.describe Picture, type: :model do
  new_picture = Picture.create(picture_uri: 'https://www.google.com/images/branding/googlelogo/1x/googlelogo_color_272x92dp.png')
  default_picture = Picture.create

  it 'should create a valid picture' do
    expect(new_picture).to be_valid
  end

  it 'should have a picture uri' do
    expect(new_picture.picture_uri).to eq('https://www.google.com/images/branding/googlelogo/1x/googlelogo_color_272x92dp.png')
  end

  it 'should create a valid picture with default uri' do
    expect(default_picture).to be_valid
  end
  it 'should have a default picture uri' do
    expect(default_picture.picture_uri).to eq('https://picsum.photos/200/300')
  end
end
