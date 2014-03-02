class RenameParksColumns < ActiveRecord::Migration
  def change
    change_table :parks do |t|
      t.rename :by_plane, :by_air
      t.rename :by_ferry, :by_water
      t.rename :by_snowmobile, :by_snow
    end
  end
end
