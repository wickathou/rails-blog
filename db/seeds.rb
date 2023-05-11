# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

new_picture_1 = Picture.create(picture_uri: "https://picsum.photos/200/300")
first_user = User.create(name: 'Tom', picture_id: new_picture_1.id, bio: 'Teacher from Mexico.')
new_picture_2 = Picture.create(picture_uri: "https://picsum.photos/200/300")
second_user = User.create(name: 'Lilly', picture_id: new_picture_2.id, bio: 'Teacher from Poland.')

first_post = Post.create(author_id: first_user.id, title: 'Hello', text: 'This is my first post')
new_comment1 = Comment.create(post_id: first_post.id, user_id: second_user.id, text: 'Hi Tom!' )
new_comment2 = Comment.create(post_id: first_post.id, user_id: first_user.id, text: 'Hi Lilly!' )
new_comment3 = Comment.create(post_id: first_post.id, user_id: second_user.id, text: 'How are you!' )
new_comment4 = Comment.create(post_id: first_post.id, user_id: first_user.id, text: 'All good!' )
second_post = Post.create(author_id: second_user.id, title: 'Number 2', text: 'This is my new post')
third_post = Post.create(author_id: first_user.id, title: 'Number 3', text: 'This is my new post')
fourth_post = Post.create(author_id: second_user.id, title: 'Number 4', text: 'This is my new post')
comment1 = Comment.create(post_id: second_post.id, user_id: first_user.id, text: 'Hi Lilly!' )
comment2 = Comment.create(post_id: third_post.id, user_id: second_user.id, text: 'Hi Tom!' )
comment3 = Comment.create(post_id: fourth_post.id, user_id: first_user.id, text: 'Hi Lilly!' )
new_like = Like.create(post_id: first_post.id, user_id: second_user.id)
new_like1 = Like.create(post_id: first_post.id, user_id: first_user.id)
new_like2 = Like.create(post_id: second_post.id, user_id: first_user.id)
new_like3 = Like.create(post_id: third_post.id, user_id: second_user.id)
new_like4 = Like.create(post_id: fourth_post.id, user_id: first_user.id)