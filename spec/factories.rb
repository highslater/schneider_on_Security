FactoryGirl.define do
  factory :user do
    name     "Michael Hartl"
    username "michael"
    email    "michael@example.com"
    password "foobar"
    password_confirmation "foobar"
  end
end