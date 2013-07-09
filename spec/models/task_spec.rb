require 'spec_helper'


describe 'Task' do
  let(:task) { FactoryGirl.create(:task) }

  it 'is added to the table when a task is added' do
    previous_count = Task.count
    task
    expect(Task.count).to eql(previous_count + 1)
  end 


  it "is valid title" do
    previous_count = Task.count
    task.title = 'valid title'
    expect(Task.count).to eql(previous_count + 1)
  end

  it "it is not valid without task" do
    task.title = nil
    expect(task).to_not be_valid
  end
end