class Account < ActiveRecord::Base
  attr_accessible :user_id
  validates :user_id
  has_many :categories
  has_many :account_membership
end
