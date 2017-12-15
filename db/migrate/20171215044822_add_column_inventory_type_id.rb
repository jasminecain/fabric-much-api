class AddColumnInventoryTypeId < ActiveRecord::Migration[5.1]
  def change
    add_column :fabrics, :inventory_type_id, :integer
  end
end
