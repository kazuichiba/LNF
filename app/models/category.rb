class Category < ActiveRecord::Base
  attr_accessible :account_id, :color, :name
  validates :account_id
  validates :color
  validates :name
end
