class Notes < ActiveRecord::Base
  attr_accessible :content, :task_id
  validates :content, :length => { :minimum => 100 }
  validates :task_id
end
