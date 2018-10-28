class RemoveFabricTypesIdFromFabrics < ActiveRecord::Migration[5.1]
  def change
    remove_index :fabrics, :fabric_types_id
    remove_column :fabrics, :fabric_types_id, :string
  end
end
