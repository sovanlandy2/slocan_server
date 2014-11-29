class AddSourceToVenue < ActiveRecord::Migration
  def change
    add_column :venues, :source, :string, default: "foursquare"
    add_column :venues, :source_id, :string
    add_index :venues, :source_id
  end
end
