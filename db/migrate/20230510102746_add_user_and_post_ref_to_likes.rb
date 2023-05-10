class AddUserAndPostRefToLikes < ActiveRecord::Migration[7.0]
  def change
    add_reference :likes, :user, null: false, foreign_key: true, type: :uuid
    add_reference :likes, :post, null: false, foreign_key: true, type: :uuid
  end
end
