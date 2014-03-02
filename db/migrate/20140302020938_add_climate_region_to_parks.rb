class AddClimateRegionToParks < ActiveRecord::Migration
  def change
    add_column :parks, :climate_region, :string
  end
end
