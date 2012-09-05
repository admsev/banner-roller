class BannersController < ApplicationController
  before_filter :authenticate_user!
  inherit_resources
  belongs_to :site
  respond_to :html, :xml, :json, :js
end
