class ChangeCharacterCountInPostTitle < ActiveRecord::Migration[7.0]
  def change
    change_column :posts, :title, :string, limit: 250
  end
end
