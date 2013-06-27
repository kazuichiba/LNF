FactoryGirl.define do
  factory :task do
    sequence(:task) { |n| "grocery #{n} Task"} 
    sequence(:content) { |n| "Go food shopping #{n}"}
    sequence(:label) { |n| "Home #{n}"}
    sequence(:priority) { |n| "important #{n}"}
    sequence(:status) { |n| "in progress #{n}"}
    sequence(:completed) { |n| "completed #{n}"}
  end

  factory :user, class: User do
    sequence(:email) { |n| "kazu.ichiba@gmail.com#{n}.com"}
    password "12345678"
    password_confirmation "12345678" 
  end
end
