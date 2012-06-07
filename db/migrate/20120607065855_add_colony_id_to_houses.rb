class AddColonyIdToHouses < ActiveRecord::Migration
  def change
    add_column :houses, :colony_id, :integer
  end
end
