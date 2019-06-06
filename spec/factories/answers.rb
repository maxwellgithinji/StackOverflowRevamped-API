FactoryBot.define do
  factory :answer do
    body { Faker::Lorem.word}
    created_by { Faker::Number.number(10)}
    question_id { Faker::Number.number(10)}
  end
end