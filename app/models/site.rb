class Site < ActiveRecord::Base
  belongs_to :user
  attr_accessible :name, :url
  
  has_many :banners
  
  validates :user_id, :presence => true
  
end
