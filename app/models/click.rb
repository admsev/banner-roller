class Click < ActiveRecord::Base
  belongs_to :banner
  attr_accessible :data
end
