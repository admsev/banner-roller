class Banner < ActiveRecord::Base
  belongs_to :site
  attr_accessible :image, :url, :name, :show_stock, :click_stock

  validates :url, :format => URI::regexp(%w(http https))
  
  validates :site_id, :presence => true
  validates :image, :presence => true

  validates :show_stock, :numericality => {:only_integer => true, :greater_than_or_equal_to => 0}
  validates :click_stock, :numericality => {:only_integer => true, :greater_than_or_equal_to => 0}
  
  mount_uploader :image, ImageUploader
  
  scope :showable, where("click_stock > 0 AND show_stock > 0")
  
  has_many :shows
  has_many :clicks
end
