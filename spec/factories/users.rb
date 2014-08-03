# Read about factories at https://github.com/thoughtbot/factory_girl
require "faker"

FactoryGirl.define do
  factory :user do
    first_name 	{Faker::Name.first_name}
    last_name 	{Faker::Name.last_name}
    username 		{Faker::Internet.user_name}
    email 			{Faker::Internet.email}
    password 			{Faker::Internet.password(8)}
    password_confirmation {password}
  end
end

# FactoryGirl.define do
#     sequence(:email) { |n| "someone#{n}@example.com" }
    
#     factory :user do
#       email
# 	  password 'password'
# 	  password_confirmation { |u| u.password }
#   end
# end
