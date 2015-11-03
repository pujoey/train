class User < ActiveRecord::Base
has_secure_password

validates :email, presence: true, uniqueness: true
validates :account_name, presence: true, uniqueness: true
validates :password, length: { in: 4..10 }

end
