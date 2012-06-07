class AddHouseIdToFlats < ActiveRecord::Migration
  def change
    add_column :flats, :house_id, :integer
  end
end
