class AccountMembership < ActiveRecord::Base
  attr_accessible :account_id, :user_id
end
