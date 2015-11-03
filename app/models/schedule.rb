class Schedule < ActiveRecord::Base
  # define relationship
  belongs_to :user
  belongs_to :trainer
end
