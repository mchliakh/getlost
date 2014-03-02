class CreateParks < ActiveRecord::Migration
  def change
    create_table :parks do |t|
      t.string :name
      t.string :province
      t.integer :season_start
      t.integer :season_end
      t.integer :visitors
      t.float :area
      t.float :summer_mean_temp
      t.float :winter_mean_temp
      t.boolean :by_car
      t.boolean :by_plane
      t.boolean :by_ferry
      t.boolean :by_snowmobile
      t.integer :number_of_species

      t.timestamps
    end
  end
end
