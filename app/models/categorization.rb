class Categorization < ActiveRecord::Base
  attr_accessible :category_id, :task_id
  validates :category_id
  validates :task_id
end
