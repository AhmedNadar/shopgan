require 'spec_helper'

feature 'User creates a product' do
  scenario 'they see the new pproduct on the page' do
    product = FactoryGirl.build(:product)
    user = FactoryGirl.build(:user)
    # user sign up and in
    visit root_path
    click_link 'Create Account'
    
    expect(current_path).to eq new_user_registration_path
    
    fill_in 'user_first_name',              with: user.first_name
    fill_in 'user_last_name',               with: user.last_name
    fill_in 'user_username',                with: user.username
    fill_in 'user_email',                   with: user.email
    fill_in 'user_password',                with: user.password
    fill_in 'user_password_confirmation',   with: user.password_confirmation
    click_button 'Sign up'
    # just make sure we are on the right path
    expect(current_path).to eq products_path
    # triger below method
		create_new_full_product

  end


	def create_new_full_product
		click_link "Create a New Product"
		expect(current_path).to eq new_product_path
		
		within 'form' do
			expect(page).to have_css 'input#product_title'
			expect(page).to have_css 'textarea#product_description'
			expect(page).to have_css 'input#product_price'
			expect(page).to have_css 'textarea#product_image_url'
		end

		fill_in 'product_title',                with: :title
		fill_in 'product_description',          with: :description
		fill_in 'product_price',                with: :price
		fill_in 'product_image_url',            with: :image_url

		click_button 'Create Product'
		expect(Product.count).to eq 1
	end
end
