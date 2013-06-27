require 'spec_helper'

describe "a user visits the homepage" do 
 it "displays a way to signup" do
  visit '/users/sign_up'
  fill_in "Name", :with => "kaz"
  fill_in "Email Address", :with => 'kazu.ichiba@gmail.com'
  fill_in "Password", :with => "password123"
  fill_in "Password confirmation", :with => "password123"
  click_button 'Sign up' 
  expect(page).to have_content("Welcome! You have signed up successfully.")
  end
end
