# Read about factories at https://github.com/thoughtbot/factory_girl
require "faker"

FactoryGirl.define do
  factory :product do
    title 				{Faker::Commerce.product_name}
    description 	{Faker::Lorem.sentence}
    price 				{Faker::Commerce.price}
    image_url 		{Faker::Internet.url}
  end
end