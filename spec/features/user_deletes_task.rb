require 'spec_helper'

describe 'user can delete a task' do 
  let(:task) { FactoryGirl.create(:task, user: user) }
  let(:user) { FactoryGirl.create(:user) }
  it 'allows a user to delete a task' do
    visit dashboard_path
    click_on "delete" (tasks_path(task.id))
    expect(page).to have("task is no more!.")  
  end
end