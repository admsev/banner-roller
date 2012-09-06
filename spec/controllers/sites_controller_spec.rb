require 'spec_helper'

describe SitesController do
  include Devise::TestHelpers
  
  before(:each) do
    @user = FactoryGirl.create :user
    sign_in @user
  end
  
  it "works" do
    get :index
    response.status.should be(200)
  end
  
end
