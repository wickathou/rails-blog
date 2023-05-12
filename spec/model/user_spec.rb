require_relative '../rails_helper'

RSpec.describe User, type: :model do
  new_user = User.create(name: 'John', bio: 'I am John')
  new_picture = Picture.create
  new_user_with_picture = User.create(name: 'John', bio: 'I am John', picture_id: new_picture.id)

  before do
    Post.create(title: 'Post 1', text: 'Some text in 1', author_id: new_user.id)
    Post.create(title: 'Post 2', text: 'Some text in 2', author_id: new_user.id)
    Post.create(title: 'Post 3', text: 'Some text in 3', author_id: new_user.id)
    Post.create(title: 'Post 4', text: 'Some text in 4', author_id: new_user.id)
    Comment.create(text: 'Comment 1', post_id: Post.first.id, author_id: new_user.id)
    Like.create(post_id: Post.first.id, author_id: new_user.id)
    new_user.update_counters
  end

  it 'should keep count of likes' do
    expect(new_user.likes_count).to eq(1)
  end

  it 'should keep count of comments' do
    expect(new_user.comments_count).to eq(1)
  end

  it 'should keep count of posts' do
    expect(new_user.posts_count).to eq(4)
  end

  it 'should be valid' do
    expect(new_user).to be_valid
  end

  it 'should have a default picture' do
    expect(new_user.picture_id).to_not be_nil
  end

  it 'should have a picture' do
    expect(new_user_with_picture.picture_id).to be(new_picture.id)
  end

  it 'allows empty bio' do
    new_user.bio = nil
    expect(new_user).to be_valid
  end

  it 'returns the last three posts' do
    expect(new_user.return_last_three_posts).to eq(new_user.posts.order('created_at Desc').last(3))
  end

  it 'should not allow empty name' do
    new_user.name = nil
    expect(new_user).to_not be_valid
  end
end
