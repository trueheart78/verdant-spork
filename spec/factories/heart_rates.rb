FactoryGirl.define do
  factory :heart_rate do
    name { Faker::Name.first_name }
    age  { Faker::Number.between(18,26) }
    resting_pulse  { Faker::Number.between(60,80) }
  end
end
