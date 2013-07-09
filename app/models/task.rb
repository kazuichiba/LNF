class Task < ActiveRecord::Base
  attr_accessible :completed, :content, :label, :notes,
    :priority, :status, :title, :user_id
  after_save :notify_assigned_user, :if => :user_id_changed?

  validates_presence_of :title

  has_many :categories, :through => :categorizations
  has_many :categories
  has_many :comments

  belongs_to :user

  class << self
    def completed
      where(completed: true)
    end
    def pending
      where(completed: false)
    end
  end

  def notify_assigned_user
    if user.present? && user.phone_number.present? && user.receives_notification.present?
      TwilioMessenger.send_text_message(user.phone_number, "Your are assigned a task.")
    end
  end

end
