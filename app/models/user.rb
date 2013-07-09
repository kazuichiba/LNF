class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation,
    :remember_me, :phone_number, :receives_notification, :avatar, :name, :email

  # Normalizes the attribute itself before validation
  phony_normalize :phone_number, :default_country_code => 'US'

  validates :email, presence: true
  validates :name, presence: true

  has_many :tasks, dependent: :destroy
  has_many :comments, dependent: :destroy
end
