require 'spec_helper'

describe "user signs out" do 
	let!(:user) { FactoryGirl.create(:user) }

  it "signs the user out of the site" do
	  visit dashboard_path
	  fill_in 'Email', with: user.email
	  fill_in 'Password', with: user.password
	  click_on 'Sign in'
    click_on 'sign_out'
    expect(page).to have_content("You need to sign in or sign up before continuing")
  end
end