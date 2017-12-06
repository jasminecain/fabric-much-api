class CreateBolts < ActiveRecord::Migration[5.1]
  def change
    create_table :bolts do |t|
      t.references :user, foreign_key: true
      t.references :fabric_type, foreign_key: true
      t.string :fabric_name
      t.integer :barcode
      t.float :price
      t.float :quantity
      t.string :store

      t.timestamps
    end
  end
end
