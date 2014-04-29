class User < ActiveRecord::Base
  has_many :problems

  validates :email, presence: true, uniqueness: true
  validates :password, confirmation: true
end
