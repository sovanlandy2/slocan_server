class CreateItineraries < ActiveRecord::Migration
  def change
    create_table :itineraries do |t|
      t.integer :user_id
      t.integer :duration
      t.json :data

      t.timestamps null: false
    end
  end
end
