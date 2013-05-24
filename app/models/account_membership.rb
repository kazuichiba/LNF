class AccountMembership < ActiveRecord::Base
  attr_accessible :account_id, :user_id
  validates :account_id
  validates :user_id
  belongs_to :user
  belongs_to :account
end
