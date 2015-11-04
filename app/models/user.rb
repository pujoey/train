class User < ActiveRecord::Base
  has_secure_password

  # db relationships
  has_many :schedules
  has_many :messages
  belongs_to :trainer

  validates :email, presence: true, uniqueness: true
  validates :account_name, presence: true, uniqueness: true
  validates :password, length: { in: 4..10 }, allow_nil: true
end
