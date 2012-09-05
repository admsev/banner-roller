# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = User.create :email => 'example@example.com', :password => 'secret'

(1..3).each do |i|
  user.sites.create :name => "Name of Site#{i}", :url => "http://example#{i}.org/"
end

user.sites.each do |site|
  (1..3).each do |j|
    site.banners.create :url => "http://www#{site.id}-#{j}.example.org/", :name => "Banner #{site.id}_#{j}", :image => File.open("spec/468x60-#{j}.gif"), :click_stock => j * 3, :show_stock => j * 100
  end
end
