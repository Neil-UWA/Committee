class UsersController < ApplicationController
  before_action :authenticate_user!, expect: [:new, :create]
end
