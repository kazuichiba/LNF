class AccountMembership < ActiveRecord::Base
  attr_accessible :account_id, :user_id
  validates :account_id, presence: true
  validates :user_id, presence: true
  belongs_to :user
  belongs_to :account
end
