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
  category: "Cotton"
},
{
  category: "Licensed Fabric"
},
{
  category: "Character Fabric"
},
{
  category: "Nursery"
},
{
  category: "Team Fabric"
},
{
  category: "Flannel"
},
{
  category: "Felt"
},
{
  category: "Fleece"
},
{
  category: "Holiday"
},
{
  category: "Premium Cotton"
}])

Bolt.create!([{
  user_id: "1",
  fabric_type_id: "1",
  fabric_name: "Purple",
  barcode: 123456789,
  price: 12.99,
  quantity: 2.0,
  store: "Joann's"
},{
  user_id: "1",
  fabric_type_id: "2",
  fabric_name: "Indigo",
  barcode: 234567891,
  price: 3.99,
  quantity: 2.0,
  store: "Joann's"
},
{
  user_id: "1",
  fabric_type_id: "3",
  fabric_name: "Brown",
  barcode: 345678912,
  price: 8.99,
  quantity: 2.0,
  store: "Fabric.com"
},
{
  user_id: "1",
  fabric_type_id: "4",
  fabric_name: "Black",
  barcode: 456789123,
  price: 11.99,
  quantity: 2.0,
  store: "Hobby Lobby"
},
{
  user_id: "1",
  fabric_type_id: "5",
  fabric_name: "White",
  barcode: 567891234,
  price: 7.99,
  quantity: 2.0,
  store: "Walmart"
}])

Fabric.create!([{
  user_id: 1,
  bolt_id: "6",
  fabric_type_id: "1",
  fabric_name: "Red",
  barcode: 123456789,
  price: 10.99,
  quantity: 3.25,
  store: "Joann's"
},
{
  user_id: 1,
  bolt_id: "7",
  fabric_type_id: "2",
  fabric_name: "Orange",
  barcode: 234567891,
  price: 4.99,
  quantity: 1.5,
  store: "Hobby Lobby"
},
{
  user_id: 1,
  bolt_id: "8",
  fabric_type_id: "3",
  fabric_name: "Yellow",
  barcode: 345678912,
  price: 6.99,
  quantity: 2.75,
  store: "Walmart"
},
{
  user_id: 1,
  bolt_id: "9",
  fabric_type_id: "4",
  fabric_name: "Green",
  barcode: 456789123,
  price: 8.99,
  quantity: 1.0,
  store: "Fabric.com"
},
{
  user_id: 1,
  bolt_id: "10",
  fabric_type_id: "5",
  fabric_name: "Blue",
  barcode: 567891234,
  price: 5.99,
  quantity: 2.0,
  store: "Joann's"
}])

Swatch.create!([{
  bolt_id: "1",
  fabric_id: "1",
  user_id: 1
},
{
  bolt_id: "2",
  fabric_id: "2",
  user_id: 1
},
{
  bolt_id: "3",
  fabric_id: "3",
  user_id: 1
},
{
  bolt_id: "4",
  fabric_id: "4",
  user_id: 1
},
{
  bolt_id: "5",
  fabric_id: "5",
  user_id: 1
},
{
  bolt_id: "6",
  fabric_id: "1",
  user_id: 1
},
{
  bolt_id: "7",
  fabric_id: "2",
  user_id: 1
},
{
  bolt_id: "8",
  fabric_id: "3",
  user_id: 1
},
{
  bolt_id: "9",
  fabric_id: "4",
  user_id: 1
},
{
  bolt_id: "10",
  fabric_id: "5",
  user_id: 1
}])


#prints out the total count tables
p "Created #{User.count} users"
p "Created #{Bolt.count} bolts"
p "Created #{Fabric.count} fabrics"
p "Created #{Swatch.count} swatches"
p "Created #{FabricType.count} fabric_types"
