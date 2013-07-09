class Comment < ActiveRecord::Base
  attr_accessible :body, :task_id, :user_id, :task
  belongs_to :task, inverse_of: :comments
  belongs_to :user
end
