require 'spec_helper' 

  describe "user adds a task" do  
    let!(:user) { FactoryGirl.create(:user) }
    let!(:task) { FactoryGirl.create(:task, user: user) }
    it "creates a task with with valid content" do
      visit dashboard_path
      fill_in "task", with: "take out the garbage"
      click_button "Create Task"
      expect(page).to have_content("Task was successfully created.")
      expect(page).to have_content("take out the garbage") 
      expect(Task.find_by_title(title)).to be_nil 
    end
  end

  describe "user cannot fill out task unless has valid content", focus: true do
    it "requires valid content" do
      visit dashboard_path
      fill_in " Task", with: "take out the garbage"
      click_button "Create Task"
      expect(page).to have_content("Task was successfully created.")
      expect(page).to have_content('take out the garbage')
    end
  end
  
  describe "user clicks task to update it" do
    let!(:task) { FactoryGirl.create(:task, user: user) }
    let(:user) { FactoryGirl.create(:user) }
    it "sticky note displays update form" do
      binding.pry
      visit dashboard_path
      save_and_open_page
      click_link(tasks_path(task.id))
      expect(page).to have("form")
    end
  end
  
  describe "user fills out form to update a task" do
    it "displays a form for a user to fill out updates" do
      visit dashboard_path
      fill_in "task_title", with: "take out the garbage"
      fill_in "content", with: "take out the garbage tomorrow"
      fill_in "label", with: "chore"
      fill_in "priorty", with: "important"
      fill_in "status", with: "in progress"
      fill_in "completed", with: "completed"
      click_button "update task"
      expect(current_path).to eql dashboard_path
      expect(page).to have_content("Task was successfully updated.")
    end
  end

