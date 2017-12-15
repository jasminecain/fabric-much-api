class RenameTypeColumnToInventoryType < ActiveRecord::Migration[5.1]
  def change
    rename_column :inventory_types, :type, :inventory_type
  end
end
