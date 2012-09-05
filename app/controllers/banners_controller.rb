class BannersController < ApplicationController
  before_filter :authenticate_user!, :except => :click
  inherit_resources
  belongs_to :site
  custom_actions :resource => :click
  respond_to :html, :xml, :json, :js
  
  before_filter :prevent_robots, :only => [:create] 

  # Ask me why I use serialize!
  def click
    resource.clicks.create(:data => {
      :remote_ip => request.remote_ip
    })
    redirect_to @banner.url
  end
  
  protected
    def begin_of_association_chain
      current_user
    end
    
    def prevent_robots
      # prevention code goes here
    end
end
