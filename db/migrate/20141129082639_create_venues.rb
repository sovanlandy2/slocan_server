class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.text :address_blob
      t.string :tags, array: true, default: '{}'
      t.string :name
      t.float :rating
      t.text :tip
      t.integer :avg_time_spent
      t.integer :best_time_for_visit
      t.decimal :latitude
      t.decimal :longigtude

      t.timestamps null: false
    end
    add_index :venues, :tags, using: :gin
    add_index :venues, :name
    add_index :venues, :rating
    add_index :venues, :avg_time_spent
    add_index :venues, :best_time_for_visit
  end
end
