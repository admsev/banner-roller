class Site < ActiveRecord::Base
  belongs_to :user
  attr_accessible :name, :url

  validates :name, :presence => true
  validates :url, :presence => true, :format => URI::regexp(%w(http https))
  
  has_many :banners
  
  validates :user_id, :presence => true
  
end
