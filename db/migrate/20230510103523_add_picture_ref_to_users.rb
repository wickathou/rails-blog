class AddPictureRefToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :pictures, :picture_uri, :string, limit: 300, null: false, default: 'https://picsum.photos/200/300'
    add_reference :users, :picture, null: false, foreign_key: true, type: :uuid
  end
end
