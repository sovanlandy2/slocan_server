class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :age
      t.string :country_origin
      t.string :device_id

      t.timestamps null: false
    end
    add_index :users, :device_id, unique: true
    add_index :users, :country_origin
    add_index :users, :age
  end
end
