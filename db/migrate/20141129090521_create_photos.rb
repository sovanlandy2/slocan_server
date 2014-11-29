class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.text :url
      t.integer :width
      t.integer :height
      t.integer :venue_id
      t.string :source_id
      t.string :source, default: "foursquare"

      t.timestamps null: false
    end
    add_index  :photos, :venue_id
    add_index :photos, :source_id
  end
end
