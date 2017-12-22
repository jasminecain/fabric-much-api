class AddAttachmentFabricImageToFabrics < ActiveRecord::Migration[5.1]
  def self.up
    change_table :fabrics do |t|
      t.attachment :fabric_image
    end
  end

  def self.down
    remove_attachment :fabrics, :fabric_image
  end
end
