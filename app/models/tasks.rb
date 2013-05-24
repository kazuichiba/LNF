class Tasks < ActiveRecord::Base
  attr_accessible :completed, :content, :label, :notes, :priority, :status, :task, :user_id
end
