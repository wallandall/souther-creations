FactoryBot.define do
  factory :test_product, class: Product do
    name { Faker::Commerce.product_name }
    description { Faker::Lorem.sentence }
    image_url {Faker::Placeholdit.image("50x50", 'jpg')}
    price {Faker::Number.decimal(2, 3)}
    category_id { Faker::Number.number(5).to_i }
  end
end
