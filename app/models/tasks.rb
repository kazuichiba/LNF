class Tasks < ActiveRecord::Base
  attr_accessible :completed, :content, :label, :notes, :priority, :status, :task, :user_id
  validates :completed
  validates :content
  validates :label
  validates :notes
  validates :priority
  validates :status
  validates :task
  validates :user_id
  has_many :categories :through => :categorizations
  has_many :categories
end
