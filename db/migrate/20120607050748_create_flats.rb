class CreateFlats < ActiveRecord::Migration
  def change
    create_table :flats do |t|

      t.integer  :rooms
      t.string :colour

      t.timestamps
    end
  end
end
