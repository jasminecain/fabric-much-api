class ChangeColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :fabric_types, :category, :fabric_type
  end
end
