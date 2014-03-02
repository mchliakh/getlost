class AddFreeToParks < ActiveRecord::Migration
  def change
    add_column :parks, :free, :boolean
  end
end
