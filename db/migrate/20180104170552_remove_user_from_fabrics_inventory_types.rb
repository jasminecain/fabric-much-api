class RemoveUserFromFabricsInventoryTypes < ActiveRecord::Migration[5.1]
  def change
    remove_column :fabrics_inventory_types, :user_id, :foreign_key
  end
end
