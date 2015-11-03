class Trainer < ActiveRecord::Base
  has_secure_password

  # db relationships
  has_many :messages
  has_many :schedules
  has_many :users


  validates :email, presence: true, uniqueness: true
  validates :account_name, presence: true, uniqueness: true
  validates :password, length: { in: 4..10 }
end
