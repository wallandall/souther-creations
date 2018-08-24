FactoryBot.define do
  factory :random_order, class: Order do
    user_id { Faker::Number.number(5).to_i }
    product_id { Faker::Number.number(5).to_i }
    total { Faker::Number.decimal(2,2) }
  end
end
