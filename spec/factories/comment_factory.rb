FactoryBot.define do
  factory :test_comment, class: Comment do
    user_id { Faker::Number.number(5).to_i }
    body { Faker::Lorem.sentence }
    rating { Faker::Number.decimal(1,0).to_i/2 }
    product_id { Faker::Number.number(5).to_i }
  end
end
