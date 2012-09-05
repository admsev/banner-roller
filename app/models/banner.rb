class Banner < ActiveRecord::Base
  belongs_to :site
  attr_accessible :image, :url, :name, :show_stock, :click_stock
  
  validates :site_id, :presence => true
  validates :image, :presence => true
  
  mount_uploader :image, ImageUploader
  
  scope :showable, where("click_stock > 0 AND show_stock > 0")
  
  has_many :shows
  has_many :clicks
end
