FactoryBot.define do
  factory :user do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    username { Faker::Internet.user_name(1) }
    email { Faker::Internet.email(1) }
    password 'Password'
    password_confirmation 'Password'
  end
end
