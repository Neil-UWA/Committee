FactoryGirl.define do
  factory :user do
    email "user@test.com"
    password "1234"
    password_confirmation "1234"
  end
end
