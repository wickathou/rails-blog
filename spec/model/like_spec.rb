# setup a test for User
require_relative '../rails_helper'

RSpec.describe Like, type: :model do
  new_user = User.create(name: 'John', bio: 'I am John')
  new_post = Post.create(title: 'Post 1', text: 'Some text in 1', author_id: new_user.id)
  new_like = Like.create(post_id: new_post.id, author_id: new_user.id)

  it 'should create a valid like' do
    expect(new_like).to be_valid
  end

  it 'should not be valid if post is nil' do
    expect(Like.new(author_id: new_user)).to_not be_valid
  end

  it 'should not be valid if author is nil' do
    expect(Like.new(post_id: new_post.id)).to_not be_valid
  end
end
