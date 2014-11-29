class AddNameToItineraries < ActiveRecord::Migration
  def change
    add_column :itineraries, :name, :string
  end
end
