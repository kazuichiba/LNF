require 'spec_helper'

describe "user signs out" do 
  it "signs the user out of the site" do
    visit dashboard_path
    click_link destroy_user_session_path
    expect(page).to have_content("Please sign up")
  end
end