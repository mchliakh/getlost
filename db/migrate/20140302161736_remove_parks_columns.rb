class RemoveParksColumns < ActiveRecord::Migration
  def change
    change_table :parks do |t|
      t.remove :summer_mean_temp, :winter_mean_temp, :number_of_species
    end
  end
end
