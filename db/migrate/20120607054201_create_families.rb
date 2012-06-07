class CreateFamilies < ActiveRecord::Migration
  def change
    create_table :families do |t|

      t.integer :members
      t.string :salary
      t.string :cast

      t.timestamps
    end
  end
end
