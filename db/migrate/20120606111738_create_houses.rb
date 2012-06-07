class CreateHouses < ActiveRecord::Migration
  def change
    create_table :houses do |t|
      t.string :h_name
      t.integer :h_no

      t.timestamps
    end
  end
end
