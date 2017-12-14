# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#creates a user so that new users will not get an error
User.create!([{
  email: "test1@testers.com",
  password: "password"
}])

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

@fabric_type = FabricType.first

Bolt.create!([{
  user_id: "1",
  fabric_type_id: @fabric_type.id,
  fabric_name: "Purple",
  barcode: 123456789,
  price: 12.99,
  quantity: 2.0,
  store: "Joann's"
},{
  user_id: "1",
  fabric_type_id: @fabric_type.id,
  fabric_name: "Indigo",
  barcode: 234567891,
  price: 3.99,
  quantity: 2.0,
  store: "Joann's"
},
{
  user_id: "1",
  fabric_type_id: @fabric_type.id,
  fabric_name: "Brown",
  barcode: 345678912,
  price: 8.99,
  quantity: 2.0,
  store: "Fabric.com"
},
{
  user_id: "1",
  fabric_type_id: @fabric_type.id,
  fabric_name: "Black",
  barcode: 456789123,
  price: 11.99,
  quantity: 2.0,
  store: "Hobby Lobby"
},
{
  user_id: "1",
  fabric_type_id: @fabric_type.id,
  fabric_name: "White",
  barcode: 567891234,
  price: 7.99,
  quantity: 2.0,
  store: "Walmart"
}])

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

Swatch.create!([{
  fabric_id: @fabric_type.id,
  user_id: 1
},
{
  fabric_id: @fabric_type.id,
  user_id: 1
},
{
  fabric_id: @fabric_type.id,
  user_id: 1
},
{
  fabric_id: @fabric_type.id,
  user_id: 1
},
{
  fabric_id: @fabric_type.id,
  user_id: 1
},
{
  fabric_id: @fabric_type.id,
  user_id: 1
},
{
  fabric_id: @fabric_type.id,
  user_id: 1
},
{
  fabric_id: @fabric_type.id,
  user_id: 1
},
{
  fabric_id: @fabric_type.id,
  user_id: 1
},
{
  fabric_id: @fabric_type.id,
  user_id: 1
}])


#prints out the total count tables
p "Created #{User.count} users"
p "Created #{Bolt.count} bolts"
p "Created #{Fabric.count} fabrics"
p "Created #{Swatch.count} swatches"
p "Created #{FabricType.count} fabric_types"
