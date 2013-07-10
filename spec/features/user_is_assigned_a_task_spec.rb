require 'spec_helper'

describe 'user is assigned a task' do
  let(:user) { FactoryGirl.create(:user) }
  let(:assigned_user) { FactoryGirl.create(:user, name: 'Jenna') }
  let(:task) { FactoryGirl.create(:task, user: assigned_user) }

  it 'user assigns a user to a task' do
    assigned_user
    sign_in_as user
    visit new_task_path
    fill_in 'task_title', with: 'Plan a Pizza Party super fun times with Chris and Jason'
    # add a select box to task form (new form) using association / look at simple form
    select(assigned_user.name, from: "Assigned To")
    click_on "Save Task"
    expect(assigned_user.tasks).to include(Task.last)
  end

  it 'allows a user to reassign a task' do
    task
    sign_in_as user
    visit dashboard_path
    click_on "edit"
    select(user.name, from: "Assigned To")
    click_on "Save Task"
    # expect task to have been reassigned
    # binding.pry
    expect(assigned_user.tasks).to_not include(Task.last)
    expect(user.tasks).to include(Task.last)
  end
end