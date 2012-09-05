require 'pp'
class SitesController < ApplicationController
  before_filter :authenticate_user!, :except => [:code]
  inherit_resources
  respond_to :html, :xml, :json, :js
  
  before_filter :prevent_robots, :only => [:code]
  
  def code
    @site = Site.find(params[:id])
    if @banner = @site.banners.where("show_stock > 0 AND click_stock > 0").sample
      @banner.shows.create(:data => {
        :remote_ip => request.remote_ip
      })
      respond_with @banner
    end
  end

  protected

    def begin_of_association_chain
      current_user
    end
    
    def prevent_robots
      # prevention code goes here
    end
end
