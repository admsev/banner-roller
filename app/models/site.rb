class Site < ActiveRecord::Base
  belongs_to :user
  attr_accessible :name, :url

  validates :url, :format => URI::regexp(%w(http https))
  
  has_many :banners
  
  validates :user_id, :presence => true
  
end
