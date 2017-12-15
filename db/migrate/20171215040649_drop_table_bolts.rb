class DropTableBolts < ActiveRecord::Migration[5.1]
  def change
    drop_table :bolts
  end
end
