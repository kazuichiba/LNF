class Tasks < ActiveRecord::Base
  attr_accessible :completed, :content, :label, :notes, :priority, :status, :task, :user_id
  validates :completed, presence: true
  validates :content, presence: true
  validates :label, presence: true
  validates :notes, presence: true
  validates :priority, presence: true
  validates :status, presence: true
  validates :task, presence: true
  validates :user_id, presence: true
  has_many :categories, :through => :categorizations
  has_many :categories
end
