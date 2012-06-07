class AddFlatIdToFamilies < ActiveRecord::Migration
  def change
    add_column :families, :flat_id, :integer
  end
end
