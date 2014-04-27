class SignUp
  include ActiveModel::Model

  validates :email, presence: true
  validates :password, presence: true
  validates :password_confirmatioin, presence: true

  attr_accessor :email, :password

  def initialize(params ={})
    @email = params[:email]
    @password = params[:password]
  end
end
