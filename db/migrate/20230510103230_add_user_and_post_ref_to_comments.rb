class AddUserAndPostRefToComments < ActiveRecord::Migration[7.0]
  def change
    add_reference :comments, :user, null: false, foreign_key: true, type: :uuid
    add_reference :comments, :post, null: false, foreign_key: true, type: :uuid
  end
end
