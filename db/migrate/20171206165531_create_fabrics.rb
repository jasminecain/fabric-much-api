class CreateFabrics < ActiveRecord::Migration[5.1]
  def change
    create_table :fabrics do |t|
      t.references :user, foreign_key: true, null: true
      t.references :bolt, foreign_key: true
      t.string :fabric_name
      t.integer :barcode
      t.float :price
      t.float :quantity
      t.string :store

      t.timestamps
    end
  end
end
