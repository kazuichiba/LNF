FactoryGirl.define do
  sequence :tasks do |n|
    "take out the garbage #{n}"
  end

  sequence :tasks do |n|
    "#{n}"
  end

  factory :task do
    sequence(:task) { |n| "Fake #{n} Task" }
    task "take out the garbage"
  end
  
  factory :task do
    sequence(:task) { |n| "grocery #{n} Task"} 
    sequence(:content) { |n| "Go food shopping #{n}"}
    sequence(:label) { |n| "Home #{n}"}
    sequence(:priority) { |n| ""}