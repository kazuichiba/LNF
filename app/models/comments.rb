class Comments < ActiveRecord::Base
  attr_accessible :body, :task_id, :user_id
  belongs_to :task
  belongs_to :user
end
