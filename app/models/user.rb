class User < ActiveRecord::Base
  attr_accessible :avatar, :name, :email
  validates :email
  validates :name
  has_many :tasks
end
