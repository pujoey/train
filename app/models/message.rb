class Message < ActiveRecord::Base

belongs_to :trainer
belongs_to :user

validates :title, presence: true
validates :content, presence: true
end
