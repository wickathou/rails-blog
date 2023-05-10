class AddUuidToAll < ActiveRecord::Migration[7.0]
  def change
    change_table :comments do |t|
      t.remove :id
      t.uuid :id, default: 'gen_random_uuid()', null: false, primary_key: true
    end

    change_table :likes do |t|
      t.remove :id
      t.uuid :id, default: 'gen_random_uuid()', null: false, primary_key: true
    end

    change_table :pictures do |t|
      t.remove :id
      t.uuid :id, default: 'gen_random_uuid()', null: false, primary_key: true
    end

    change_table :posts do |t|
      t.remove :id
      t.uuid :id, default: 'gen_random_uuid()', null: false, primary_key: true
    end
  end
end
