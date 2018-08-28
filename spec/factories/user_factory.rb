FactoryBot.define do

  factory :test_user, class: User do
    id { Faker::Number.number(5).to_i }
    email { Faker::Internet.safe_email }
    password { Faker::Internet.password(min_length = 8, max_length = 16) }
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    admin false
  end

  factory :admins, class: User do
    id { Faker::Number.number(5).to_i }
    email { Faker::Internet.safe_email }
    password { Faker::Internet.password(min_length = 8, max_length = 16) }
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    admin true
  end
end
