require 'spec_helper'

describe 'a user comments on a task' do
  let!(:user) { FactoryGirl.create(:user) }
  let!(:task) { FactoryGirl.create(:task, user: user) }
  
  it 'comments on a task' do
    visit task_path(task)
    fill_in "comment_body", with: 'Need more information'
    click_on "Create Comment"
    expect(page).to have_content "Comment created."
  end
end
