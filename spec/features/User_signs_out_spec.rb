require 'spec_helper'

describe "user signs out" do 
  it "signs the user out of the site" do
    click_link "sign out"
    expect(current_path).to eql sing_up_path
  end
end