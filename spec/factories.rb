#Factory.define :user do |f|
#  f.sequence(:email){|n| "email#{n}@example.com"}
#  f.password "secret"
#end

FactoryGirl.define do
  sequence :email do |n|
    "email#{n}@example.com"
  end
  
  factory :user do
    email
    password "secret"
  end
end
