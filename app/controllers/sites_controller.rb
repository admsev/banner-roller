class SitesController < ApplicationController
  before_filter :authenticate_user!
  inherit_resources
  respond_to :html, :xml, :json, :js
  
  def begin_of_association_chain
    current_user
  end
end
