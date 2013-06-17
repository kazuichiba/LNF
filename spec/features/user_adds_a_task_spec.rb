require 'spec_helper'

describe "user adds a task" do  
  it "creates a task with with valid content" do
    visit new_task_path
    fill_in "Title", with: "take out the garbage"
    click_button "Create Task"
    expect(page).to have_content("Task was successfully created.")
    expect(page).to have_content("take out the garbage")  
  end
  it "requires valid content"
end