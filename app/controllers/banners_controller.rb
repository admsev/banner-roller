class BannersController < ApplicationController
  before_filter :authenticate_user!, :except => :click
  inherit_resources
  belongs_to :site
  custom_actions :resource => :click
  respond_to :html, :xml, :json, :js
  
  before_filter :prevent_robots, :only => [:create] 
  
  def click
    resource.clicks.create(:data => {
      # some data from request
    })
    redirect_to @banner.url
  end
  
  protected
    def prevent_robots
      # prevention code goes here
    end
end
