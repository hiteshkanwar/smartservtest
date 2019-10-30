FactoryGirl.define do
  factory :contact do
    title     {  Faker::Name.name }
    price     { Faker::String.random(length: 3..12)}
    popularity { Faker::Number.number(10) }
    subcategory {  Faker::Name.name }
  end
end