class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name, limit: 100
      t.string :bio, limit: 300

      t.timestamps
    end
  end
end
