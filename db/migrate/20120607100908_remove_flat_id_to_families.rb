class RemoveFlatIdToFamilies < ActiveRecord::Migration
  def up
    remove_column :families, :flat_id
      end

  def down
    add_column :families, :flat_id, :string
    add_index :families, :flat_id
  end
end
