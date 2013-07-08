require 'spec_helper' 

  describe "user adds a task" do  
    let!(:user) { FactoryGirl.create(:user) }
    let!(:task) { FactoryGirl.create(:task, user: user) }

    before(:each) do 
      visit dashboard_path
      fill_in 'Email', with: user.email
      fill_in 'Password', with: user.password
      click_on 'Sign in'
    end

    it "creates a task with with valid content" do
      visit new_task_path
      fill_in "task_title", with: "take out the garbage"
      click_button "Save Task"
      expect(page).to have_content("Task was successfully created.")
      expect(page).to have_content("take out the garbage") 
      expect(Task.find_by_title(title)).to be_nil 
    end

    it "requires valid content" do
      visit new_task_path
      fill_in "task_title", with: "take out the garbage"
      click_button "Save Task"
      expect(page).to have_content("Task was successfully created.")
      expect(page).to have_content('take out the garbage')
    end
  end
  
  describe "user clicks task to update it" do
    let!(:task) { FactoryGirl.create(:task, user: user) }
    let(:user) { FactoryGirl.create(:user) }

    before(:each) do 
      visit dashboard_path
      fill_in 'Email', with: user.email
      fill_in 'Password', with: user.password
      click_on 'Sign in'
    end

    it "sticky note displays update form" do
      visit dashboard_path
      click_on task.title
      expect(page).to have_content('Edit a Task')
    end
  end
  
  describe "user fills out form to update a task" do

    let(:user) { FactoryGirl.create(:user) }
    let!(:task) { FactoryGirl.create(:task, user: user) }

    before :each do 
      visit dashboard_path
      fill_in 'Email', with: user.email
      fill_in 'Password', with: user.password
      click_on 'Sign in'
    end

    it "displays a form for a user to fill out updates" do
      visit task_path(task)
      fill_in "task_title", with: "take out the garbage"
      fill_in "task_content", with: "take out the garbage tomorrow"
      fill_in "task_label", with: "chore"
      fill_in "task_priority", with: "important"
      fill_in "task_status", with: "in progress"
      click_button "Save Task"
      expect(current_path).to eql dashboard_path
      expect(page).to have_content("Task was successfully updated.")
    end
  end

