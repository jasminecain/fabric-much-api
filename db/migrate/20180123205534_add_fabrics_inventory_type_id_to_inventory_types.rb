class AddFabricsInventoryTypeIdToInventoryTypes < ActiveRecord::Migration[5.1]
  def change
    add_column :inventory_types, :fabrics_inventory_type_id, :integer
  end
end
