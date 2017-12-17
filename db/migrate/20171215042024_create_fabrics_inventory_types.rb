class CreateFabricsInventoryTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :fabrics_inventory_types do |t|
      t.references :user, foreign_key: true
      t.references :fabric, foreign_key: true
      t.references :inventory_type, foreign_key: true

      t.timestamps
    end
  end
end
