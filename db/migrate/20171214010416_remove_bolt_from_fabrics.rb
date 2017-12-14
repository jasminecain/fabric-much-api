class RemoveBoltFromFabrics < ActiveRecord::Migration[5.1]
  def change
    remove_reference :fabrics, :bolt, foreign_key: true
  end
end
