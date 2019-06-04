FactoryBot.define do
  factory :user do
    name { Faker::Name.name }
    email { "user@email.com" }
    password { "@@1100gFLBq77" }
  end
end
