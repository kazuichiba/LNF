FactoryGirl.define do
  factory :task do
    sequence(:title) { |n| "grocery #{n} Task"} 
    sequence(:content) { |n| "Go food shopping #{n}"}
    sequence(:label) { |n| "Home #{n}"}
    sequence(:priority) { |n| "important #{n}"}
    sequence(:status) { |n| "in progress #{n}"}
    sequence(:completed) { |n| "completed #{n}"}
    user
  end

  factory :user do
    sequence(:email) { |n| "kazu.ichiba@gmail.com#{n}.com"}
    name "Kaz"
    password "12345678"
    password_confirmation "12345678" 
  end
end
