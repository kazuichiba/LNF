class User < ActiveRecord::Base
  attr_accessible :avatar, :name, :email
  validates :email, presence: true
  validates :name, presence: true
  has_many :tasks
end
