class CreateSwatches < ActiveRecord::Migration[5.1]
  def change
    create_table :swatches do |t|
      t.references :bolt, foreign_key: true
      t.references :fabric, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
