class CreatePlants < ActiveRecord::Migration
  def self.up
    create_table :plants do |t|
      t.string :name
      t.integer :count
      t.float :yield
      t.string :yield_unit
      t.string :hardiness
      t.integer :adlf_min
      t.integer :adlf_max
      t.string :seed
      t.integer :spacing
      t.integer :rows_per_bed
      t.boolean :alternate_rows
      t.float :depth
      t.integer :feedings_min
      t.integer :feedings_max
      t.float :avg_height

      t.timestamps
    end
  end

  def self.down
    drop_table :plants
  end
end
