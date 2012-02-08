class CreateLocations < ActiveRecord::Migration
  def self.up
    create_table :locations do |t|
      t.float :latitude
      t.float :longitude
      t.string :title
      t.text :note
      t.string :yelp_url

      t.timestamps
    end
    
    add_index :locations, :latitude
    add_index :locations, :longitude
  end

  def self.down
    drop_table :locations
  end
end
