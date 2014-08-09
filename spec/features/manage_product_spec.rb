# require 'spec_helper'

# feature 'User creates a product' do
#   scenario 'they see the new pproduct on the page' do
#     product = FactoryGirl.build(:product)
#     user = FactoryGirl.build(:user)

#     visit root_path
#     click_link 'Log in'

#     fill_in 'user_email',                   with: user.email
#     fill_in 'user_password',                with: user.password
#     click_button "Sign in"    

#     expect(current_path).to eq products_path
    
#     click_link "Create a New Product"

#     expect(current_path).to eq new_product_path
    
#     # visit new_product_path
#     # expect(current_path).to eq new_product_path

#     fill_in 'product_title',                with: product.title
#     fill_in 'product_description',          with: product.description
#     fill_in 'product_price',                with: product.price
#     fill_in 'product_image_url',            with: product.image_url

#     click_button 'Create Product'
#     expect(current_path).to eq product_path(@product)

#     # expect(page).to have_css('table tr.foo')

#     expect(page).to have_css 'ul li.title',              text: product.title
#     expect(page).to have_css 'ul li.description',        text: product.description
#     expect(page).to have_css 'ul li.price',              text: product.price
#     expect(page).to have_css 'ul li.image_url',          text: product.image_url
#   end
# end



# # feature "User visit dashboard" do
# #   scenario "should see product information" do
# #     visit products_path

# #     within 'h2' do
# #     	expect(page).to have_text "All Products List"
# #     end
# #   end

# #   scenario "view a product" do
# #     create(:product, title: "Milk", description: "Milk is good for your health", price: "9.99", image_url: "http://example.com/img/milk.png")
# #     create_productr_with_full_info
# #   end
# # end


# # scenario "view only my todos" do
# #   	create(:todo, description: 'Buy some eggs', owner_email: 'not_me@mail.com')
# #   	sign_in_as "me@mail.com"
# # 		create_todo_with_description "Buy some milk"
# # 		user_sees_todo_item "Buy some milk"
# #     user_does_not_sees_todo_item "Buy some eggs"
# #   end

# # def create_todo_with_description(description)
# #     click_link "Add a new todo"
# #     fill_in "Description", with: description
# #     click_button "Create todo"  	
# #   end


