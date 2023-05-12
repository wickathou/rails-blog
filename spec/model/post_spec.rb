require_relative '../rails_helper'

RSpec.describe Post, type: :model do
  new_user = User.create(name: 'John', bio: 'I am John')
  new_post = Post.create(title: 'Post 1', text: 'Some text in 1', author_id: new_user.id)

  before do
    Comment.create(text: 'Comment 1', post_id: new_post.id, author_id: new_user.id)
    Comment.create(text: 'Comment 2', post_id: new_post.id, author_id: new_user.id)
    Comment.create(text: 'Comment 3', post_id: new_post.id, author_id: new_user.id)
    Comment.create(text: 'Comment 4', post_id: new_post.id, author_id: new_user.id)
    Comment.create(text: 'Comment 5', post_id: new_post.id, author_id: new_user.id)
    Comment.create(text: 'Comment 6', post_id: new_post.id, author_id: new_user.id)
    Like.create(post_id: new_post.id, author_id: new_user.id)
    new_post.update_all_counters
    new_user.update_counters
  end

  it 'should keep count of likes' do
    expect(new_post.likes_count).to eq(1)
  end

  it 'should keep count of comments' do
    expect(new_post.comments_count).to eq(6)
  end

  it 'should update count of posts for user' do
    expect(new_user.posts_count).to eq(1)
  end

  it 'should return last five comments' do
    expect(new_post.return_last_five_comments).to eq(new_post.comments.order('created_at Desc').last(5))
  end

  it 'should be valid' do
    expect(new_post).to be_valid
  end

  it 'should be invalid without title' do
    new_post.title = nil
    expect(new_post).to_not be_valid
  end

  it 'should be invalid without text' do
    new_post.title = 'Post 1'
    expect(new_post).to be_valid
    new_post.text = nil
    expect(new_post).to_not be_valid
  end
end
