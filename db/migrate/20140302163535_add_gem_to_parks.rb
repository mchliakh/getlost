class AddGemToParks < ActiveRecord::Migration
  def change
    add_column :parks, :gem, :boolean
  end
end
