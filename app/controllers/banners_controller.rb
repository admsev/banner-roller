class BannersController < ApplicationController
  before_filter :authenticate_user!
  inherit_resources
  belongs_to :site
  custom_actions :resource => :click
  respond_to :html, :xml, :json, :js
  
  def click
    resource.clicks.create
    redirect_to @banner.url
  end
  
end
