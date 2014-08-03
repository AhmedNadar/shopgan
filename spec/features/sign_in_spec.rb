require 'spec_helper'

feature "Sign in as a user" do
  scenario "with right credentials" do
    user = FactoryGirl.build(:user)
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

    expect(current_path).to eq dashboard_path

    expect(User.count).to eq(1)
    expect(page).to have_content 'Welcome! You have signed up successfully.'
    expect(page).to have_link 'Sign out',       href: destroy_user_session_path
  end
end

  #   fill_in "Email", with: user.email
  #   fill_in "Password", with: user.password
  #   fill_in "Password confirmation", with: user.password_confirmation
  #   click_button "Sign up"

  #   expect(current_path).to eq playlists_path 
  #   expect(page).to have_css '.alert',          text: 'Welcome! You have signed up successfully.'  
  #   expect(page).to have_link 'Sign out',       href: destroy_user_session_path
  #   expect(page).to have_link 'Edit profile',   href: edit_user_registration_path
  # 