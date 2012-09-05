class Banner < ActiveRecord::Base
  belongs_to :site
  attr_accessible :image, :url, :name
  
  validates :site_id, :presence => true
end
