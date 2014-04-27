class User < ActiveRecord::Base
  has_many :problems

  validates :email, presence: true
  validates :password, confirmation: true
end
