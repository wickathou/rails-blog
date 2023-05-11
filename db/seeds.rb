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
new_comment = Comment.create(post_id: first_post.id, user_id: second_user.id, text: 'Hi Tom!' )
new_like = Like.create(post_id: first_post.id, user_id: second_user.id)