require_relative '../rails_helper'

RSpec.describe Comment, type: :model do
  new_user = User.create(name: 'John', bio: 'I am John')
  new_post = Post.create(title: 'Post 1', text: 'Some text in 1', author_id: new_user.id)
  new_comment = Comment.create(text: 'Comment 1', post_id: new_post.id, author_id: new_user.id)

  it 'should create a valid comment' do
    expect(new_comment).to be_valid
  end

  it 'should not be valid if post is nil' do
    expect(Comment.new(text: 'test 1', author_id: new_user)).to_not be_valid
  end

  it 'should not be valid if author is nil' do
    expect(Comment.new(text: 'test 2', post_id: new_post.id)).to_not be_valid
  end

  it 'should not be valid if text is nil' do
    expect(Comment.new(post_id: new_post.id, author_id: new_user)).to_not be_valid
  end
end
