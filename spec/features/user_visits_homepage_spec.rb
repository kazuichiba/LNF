require 'spec_helper'

describe "a user visits the homepgae" do 
 it "displays a way to signup" do
  visit 'pages/index'
  fill_in 'Sign up email', :with => 'kazu.ichiba@gmail.com'
  fill_in 'Sign up password', :with => 'kaz'
  fill_in 'Sign up verify password', :with => 'kaz'
  click_button 'Create account' 
  expect(page).to have content("Thank you for signing up")
  end
end
