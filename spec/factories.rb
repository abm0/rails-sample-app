FactoryGirl.define do
  factory :user do
    name     "Igor Dranichnikov"
    email    "test@mail.com"
    password "foobar"
    password_confirmation "foobar"
  end
end