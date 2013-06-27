class Task < ActiveRecord::Base
  attr_accessible :completed, :content, :label, :notes,
    :priority, :status, :title, :user_id

  validates_presence_of :title

  has_many :categories, :through => :categorizations
  has_many :categories
end
