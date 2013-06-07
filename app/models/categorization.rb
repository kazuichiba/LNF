class Categorization < ActiveRecord::Base
  attr_accessible :category_id, :task_id
  validates :category_id, presence: true
  validates :task_id, presence: true
end
