#Factory.define :user do |f|
#  f.sequence(:email){|n| "email#{n}@example.com"}
#  f.password "secret"
#end

FactoryGirl.define do
  sequence :email do |n|
    "email#{n}@example.com"
  end
  
  sequence :name do |n|
    "name#{n}"
  end
  
  sequence :url do |n|
    "http://www#{n}.example.com/"
  end
  
  factory :site do |f|
    name
    url
    user
  end
  
  factory :banner do |f|
    name
    url
    site
    show_stock 100
    click_stock 100
    image File.open("spec/468x60.gif")
  end
  
  factory :user do |f|
    email
    password "secret"
    
    #f.after_create do |user|
    #  user.sites.create FactoryGirl.build(:site)
    #end
#    u.after_create do |user|
#      user.sites.create FactoryGirl.build(:site)
#    end
  end
end
