class Task < ActiveRecord::Base
  attr_accessible :completed, :content, :label, :notes,
    :priority, :status, :title, :user_id

  validates_presence_of :title

  has_many :categories, :through => :categorizations
  has_many :categories

  belongs_to :user

  class << self
    def completed
      where(completed: true)
    end
    def pending
      where(completed: false)
    end
  end
end
