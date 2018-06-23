# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.destroy_all
Product.destroy_all

Category.create(product_category: "Sculptures", description: "Handmade wooden and stone Sculptures", image_url: "products/s1.jpg")
Category.create(product_category: "Beeds", description: "Handmand Jewellery, ornaments and accessaries sourced from local materials", image_url: "products/b1.jpg")
Category.create(product_category: "Paintings", description: "A selection of locally sourced paintings", image_url: "products/p1.jpg")

Product.create(name: "Product1", description: "This is the first system generated product", image_url: "products/s2.jpg", category_id: "1")
Product.create(name: "Product2", description: "This is the second system generated product", image_url: "products/p2.jpg", category_id: "2")
Product.create(name: "Product3", description: "This is the third system generated product", image_url: "products/b2.jpg", category_id: "3")
