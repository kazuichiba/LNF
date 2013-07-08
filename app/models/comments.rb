class Comments < ActiveRecord::Base
  attr_accessible :body, :task_id, :user_id
end
