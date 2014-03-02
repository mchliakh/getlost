class RemoveMoreParksColumns < ActiveRecord::Migration
  def change
    change_table :parks do |t|
      t.remove :season_start, :season_end
    end
  end
end
