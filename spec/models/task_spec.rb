require 'spec_helper'


describe Task do
  it 'is added to the table when a task is added.' do
    previous_count = Task.all.count
    let(:task) { FactoryGirl.create(:task) }
    expect(Task.all.count).to eq(previous_count + 1)
  end


  it "is valid" do
    expect (task).to be_valid
  end

  it "it is not valid without task" do
    task.title = nil
    expect(task).to_not be_valid
  end

