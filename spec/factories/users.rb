FactoryGirl.define do
  factory :user do
    email 'username@random.com'
    password 'password'
    password_confirmation 'password'
  end
end
