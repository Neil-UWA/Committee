require 'spec_helper'

describe User do
  it 'is invalid without an email' do
    FactoryGirl.build(:user, email: nil).should_not be_valid
  end

  it 'is invalid without an password' do
    FactoryGirl.build(:user, password: nil).should_not be_valid
  end

  it 'is invalid if password is not comfirmed' do
    FactoryGirl.build(:user, password_confirmation: '1').should_not be_valid
  end

  it 'is invalid to create an user with same email' do
    FactoryGirl.create(:user)
    FactoryGirl.build(:user).should_not be_valid
  end
end
