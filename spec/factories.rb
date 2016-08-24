FactoryGirl.define do

  factory :team do
    sequence(:team_name)         { |n| "Team #{n}" }
    sequence(:description)          { |n| "Happy Team Co#{n} has a lengthy description" }
    sequence(:color)                { |n| "FC#{n % 10}F6F" }
    sequence(:street_address_1)     { |n| "#{n} Sesame Street" }
    sequence(:postal)               { |n| sprintf("%05d", n) }
    sequence(:city)                 { |n| ["Amsterdam", "London", "New York"][n % 3] }
    sequence(:country)              { |n| ["NL", "UK", "US"][n % 3] }
  end

  factory :user do
    sequence(:email)                { |n| "user#{n}@superpencil.com" }
    password                        'password'
    password_confirmation           'password'
    first_name                      'Billy'
    last_name                       'Adventure'
  end

end
