FactoryBot.define do
  factory :question do
    body { Faker::Lorem.word }
    created_by { Faker::Number.number(10) }
  end
end
