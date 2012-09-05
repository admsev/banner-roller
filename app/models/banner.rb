class Banner < ActiveRecord::Base
  belongs_to :site
  attr_accessible :image, :url
end
