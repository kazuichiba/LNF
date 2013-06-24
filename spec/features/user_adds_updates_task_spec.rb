  require 'spec_helper'

  feature "user can add task" do
    let(:user) { FactoryGirl.create(:user) }
    let(:task) { FactoryGirl.create(:task, user: user) }

describe "user adds a task" do  
  it "creates a task with with valid content" do
    visit dashboard_path
    fill_in "Task", with: "take out the garbage"
    click_button "Create Task"
    expect(page).to have_content("Task was successfully created.")
    expect(page).to have_content("take out the garbage")  
    expect(Task.find_by_title(title)).to_not be_nil
  end
  it "requires valid content" do
    visit dashboard_path
    fill_in "Task", with: "take out the garbage"
    click_button "Create Task"
    expect(page).to have_content("Task was successfully created.")
    expect(page).to have_content('take out the garbage')
  end

  describe "user clicks task to update it" do
    it "takes user to task update page" do
    visit dashboard_path
    click_link("tasks/1")
    visit task_1_path
    expect(page).to have_content("Task")
    end
  end
  describe "user fills out form to update a task" do
    it "displays a form for a user to fill out updates" do
      visit edit_tasks_path
      fill_in "Task", with: "take out the garbage"
      fill_in "Content", with: "take out the garbage tomorrow"
      fill_in "Label", with: "chore"
      fill_in "Priorty", with: "important"
      fill_in "Status", with: "in progress"
      fill_in "completed", with: "completed"
      click_button "update task"
      expect(current_path).to eql dashboard_path
      expect(page).to have_content("Task was successfully updated.")
    end
  end



end


