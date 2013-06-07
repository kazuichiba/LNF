class Category < ActiveRecord::Base
  attr_accessible :account_id, :color, :name
  validates :account_id, presence: true
  validates :color, presence: true
  validates :name, presence: true
end
