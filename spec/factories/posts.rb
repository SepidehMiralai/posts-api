FactoryBot.define do
  factory :post do
    author { Faker::Name.name }
    authorId { rand(1..20) }
    likes { Faker::Number.number }
    popularity { Faker::Number.between(from: 0.0, to: 1.0) }
    reads { Faker::Number.number }
    tags { Array.new(["tech", "science", "health", "finance", "fashion", "business", "sport"].sample(3)) }
  end
end