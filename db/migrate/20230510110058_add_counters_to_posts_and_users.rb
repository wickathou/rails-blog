class AddCountersToPostsAndUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :likes_count, :integer, null: false, default: 0
    add_column :users, :comments_count, :integer, null: false, default: 0
    add_column :posts, :likes_count, :integer, null: false, default: 0
    add_column :posts, :comments_count, :integer, null: false, default: 0
  end
end
