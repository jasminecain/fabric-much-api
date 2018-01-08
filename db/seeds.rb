# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

unless User.count > 0
  User.create(:email => 'user@example.com', :password => 'password')
end

unless FabricType.count > 0
  FabricType.create!([
    { fabric_type: 'Cotton' },
    { fabric_type: 'Licensed Fabric' },
    { fabric_type: 'Character Fabric' },
    { fabric_type: 'Nursery' },
    { fabric_type: 'Team Fabric' },
    { fabric_type: 'Flannel' },
    { fabric_type: 'Felt' },
    { fabric_type: 'Fleece' },
    { fabric_type: 'Holiday' },
    { fabric_type: 'Premium Cotton' }
  ])
end

unless Fabric.count > 0
  Fabric.create!([
    {
      :user_id => 1,
      :fabric_type_id => 1,
      :fabric_name => 'Felt',
      :barcode => 1234,
      :price => 5.00,
      :quantity => 1,
      :store => 'Joanns',
      :fabric_image_file_name => nil,
      :fabric_image_content_type => nil,
      :fabric_image_file_size => nil,
      :fabric_image_updated_at => nil,
      :fabric_image => nil,
    },
    {
      :user_id => 1,
      :fabric_type_id => 2,
      :fabric_name => 'Vinyl',
      :barcode => 2345,
      :price => 10.00,
      :quantity => 1,
      :store => 'Joanns',
      :fabric_image_file_name => nil,
      :fabric_image_content_type => nil,
      :fabric_image_file_size => nil,
      :fabric_image_updated_at => nil,
      :fabric_image => nil,
    },
    {
      :user_id => 1,
      :fabric_type_id => 3,
      :fabric_name => 'Leather',
      :barcode => 3456,
      :price => 20.00,
      :quantity => 1,
      :store => 'Hobby Lobby',
      :fabric_image_file_name => nil,
      :fabric_image_content_type => nil,
      :fabric_image_file_size => nil,
      :fabric_image_updated_at => nil,
      :fabric_image => nil
    }
  ])
end

unless FabricsInventoryType.count > 0
  Fabric.all.each.with_index(1) do |fabric, index|
    fabric.create_fabrics_inventory_types(:inventory_type_id => index)
  end
end

unless InventoryType.count > 0
  InventoryType.create!([
    { :inventory_type => 'Bolt' },
    { :inventory_type => 'Fabric' },
    { :inventory_type => 'Swatch' }
  ])
end
