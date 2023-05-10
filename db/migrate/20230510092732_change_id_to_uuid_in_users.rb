class ChangeIdToUuidInUsers < ActiveRecord::Migration[7.0]
  def change
    enable_extension 'pgcrypto' unless extension_enabled?('pgcrypto')
    change_table :users do |t|
      t.remove :id
      t.uuid :id, default: 'gen_random_uuid()', null: false, primary_key: true
    end
  end
end
