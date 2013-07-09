require 'spec_helper'

describe 'a user comments on a task' do

  it 'comments on a task' do
    task = FactoryGirl.create(:task)
    visit dashboard_path(task)
    fill_in "Comment", with: 'Need more information'
    click_on "Create Comment"
    expect(page).to have_content "Comment created."
  end

  it 'does not create invalid comments on a task' do
    task = FactoryGirl.create(:task)
    visit dashboard_path(menu_item)
    fill_in "Comment", with: ''
    click_on "Create Comment"
    expect(page).to have_content ""
  end
end
