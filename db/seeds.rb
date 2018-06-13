# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Category.create(product_category: "sculptures", description: "Handmade wooden and stone Sculptures", image_url: "stone.jpg")
Category.create(product_category: "Beeds", description: "Handmand Jewellery, ornaments and accessaries sourced from local materials", image_url: "beeds.jpeg")
Category.create(product_category: "Paintings", description: "A selection of locally sourced paintings", image_url: "paintings.jpeg")
Product.create(name: "Product1", description: "This is the first system generated product", image_url: "http://via.placeholder.com/350x150", category_id: "1")
Product.create(name: "Product2", description: "This is the second system generated product", image_url: "http://via.placeholder.com/350x150", category_id: "2")
Product.create(name: "Product3", description: "This is the third system generated product", image_url: "http://via.placeholder.com/350x150", category_id: "3")
