# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#creates a user so that new users will not get an error
User.create!([{
  email: "test@example.com",
  password: "password"
}])

unless FabricType.count > 0
  FabricType.create!([{
    fabric_type: "Cotton"
  },
  {
    fabric_type: "Licensed Fabric"
  },
  {
    fabric_type: "Character Fabric"
  },
  {
    fabric_type: "Nursery"
  },
  {
    fabric_type: "Team Fabric"
  },
  {
    fabric_type: "Flannel"
  },
  {
    fabric_type: "Felt"
  },
  {
    fabric_type: "Fleece"
  },
  {
    fabric_type: "Holiday"
  },
  {
    fabric_type: "Premium Cotton"
  }])
end

@fabric_type = FabricType.first

Fabric.create!([{
  user_id: 1,
  fabric_type_id: @fabric_type.id,
  fabric_name: "Red",
  barcode: 123456789,
  price: 10.99,
  quantity: 3.25,
  store: "Joann's"
},
{
  user_id: 1,
  fabric_type_id: @fabric_type.id,
  fabric_name: "Orange",
  barcode: 234567891,
  price: 4.99,
  quantity: 1.5,
  store: "Hobby Lobby"
},
{
  user_id: 1,
  fabric_type_id: @fabric_type.id,
  fabric_name: "Yellow",
  barcode: 345678912,
  price: 6.99,
  quantity: 2.75,
  store: "Walmart"
},
{
  user_id: 1,
  fabric_type_id: @fabric_type.id,
  fabric_name: "Green",
  barcode: 456789123,
  price: 8.99,
  quantity: 1.0,
  store: "Fabric.com"
},
{
  user_id: 1,
  fabric_type_id: @fabric_type.id,
  fabric_name: "Blue",
  barcode: 567891234,
  price: 5.99,
  quantity: 2.0,
  store: "Joann's"
}])

InventoryType.create!([{
  inventory_type: "Bolt"
},
{
  inventory_type: "Fabric"
},
{
  inventory_type: "Swatch"
}])

@fabric = Fabric.first
@inventory_type = InventoryType.first

FabricsInventoryType.create!([{
  user_id: 1,
  fabric_id: @fabric.id,
  inventory_type_id: @inventory_type.id
}])

#prints out the total count tables
p "Created #{User.count} users"
p "Created #{Fabric.count} fabrics"
p "Created #{FabricType.count} fabric_types"
p "Created #{FabricsInventoryType.count} fabric_inventory_types"
