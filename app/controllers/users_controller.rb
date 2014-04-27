class UsersController < ApplicationController
  before_action :sign_in, only:[:show]

  def new
    @user = User.new
  end

  def create
    @user = User.new(sign_up_params)
  end

  def show
    @user = User.find(params[:id])
  end

private
  def sign_up_params
    params[:user].permit(:email, :password, :password_confirmation)
  end
end
