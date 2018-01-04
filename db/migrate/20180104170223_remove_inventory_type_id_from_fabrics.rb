class RemoveInventoryTypeIdFromFabrics < ActiveRecord::Migration[5.1]
  def change
    remove_column :fabrics, :inventory_type_id, :integer
  end
end
