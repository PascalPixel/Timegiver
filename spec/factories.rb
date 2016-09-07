FactoryGirl.define do

  factory :team do
    sequence(:team_name)         { |n| "Team #{n}" }
    sequence(:description)          { |n| "Happy Team Co#{n} has a lengthy description" }
    sequence(:color)                { |n| "FC#{n % 10}F6F" }
  end

  factory :user do
    sequence(:email)                { |n| "user#{n}@superpencil.com" }
    password                        'password'
    password_confirmation           'password'
    first_name                      'Billy'
    last_name                       'Adventure'
    time_zone                       'Brisbane'
  end

end
