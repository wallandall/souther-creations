FactoryBot.define do
  factory :test_category, class: Category do
    product_category {Faker::Vehicle.manufacture}
    description { Faker::Lorem.sentence }
    image_url {Faker::Placeholdit.image("50x50", 'jpg')}
  end
end
