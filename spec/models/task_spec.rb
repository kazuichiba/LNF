require 'spec_helper'

describe Task do
  it 'is added to the table when a task is added.' do
    previous_count = Task.all.count
    FactoryGirl.create(:task)
    expect(Task.all.count).to eq(previous_count + 1)
  end