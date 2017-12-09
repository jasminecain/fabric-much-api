class RemoveBoltFromSwatch < ActiveRecord::Migration[5.1]
  def change
    remove_reference :swatches, :bolt, foreign_key: true
  end
end
