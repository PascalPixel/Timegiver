FactoryGirl.define do

  factory :team do
    sequence(:team_name)         { |n| "Team #{n}" }
    sequence(:description)          { |n| "Happy Team Co#{n} has a lengthy description" }
    sequence(:color)                { |n| "FC#{n % 10}F6F" }
    sequence(:last_name)            { |n| "Doe#{n}" }
    sequence(:first_name)           { |n| "John #{n}" }
    sequence(:title)                { |n| ["Mr", "Mrs", "Ms"][n % 3] }
    sequence(:street_address_1)     { |n| "#{n} Sesame Street" }
    sequence(:postal)               { |n| sprintf("%05d", n) }
    sequence(:city)                 { |n| ["Amsterdam", "London", "New York"][n % 3] }
    sequence(:country)              { |n| ["NL", "UK", "US"][n % 3] }
    sequence(:rate)                 { |n| n % 9 + 1 }
    sequence(:currency_sign)        { |n| %w[Euro Pound $][n % 3] }
    sequence(:currency)             { |n| %w[EUR GBP USD][n % 3] }
  end

  factory :user do
    sequence(:email)                { |n| "user#{n}@superpencil.com" }
    password                        'password'
    password_confirmation           'password'

    trait :is_admin do
      admin                           true
    end
    trait :is_regular do
      admin                           false
    end
  end

end
