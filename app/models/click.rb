class Click < ActiveRecord::Base
  belongs_to :banner, :counter_cache => true
  attr_accessible :data
  serialize :data
  
  after_create :update_banner

  protected  
    def update_banner
      banner.update_attribute :click_stock, banner.click_stock.to_i - 1
    end
end
