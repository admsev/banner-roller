require 'spec_helper'

describe BannersController do
  include Devise::TestHelpers
  
  before(:each) do
    @user = FactoryGirl.create :user
    @site = FactoryGirl.create(:site, :user => @user)
    @banner = FactoryGirl.create(:banner, :site => @site)

    sign_in @user
  end
  
  describe "Click" do
    it "Redirects" do
      get "click", :site_id=>@site.id, :id => @banner.id

      response.status.should be(302)
      response.should redirect_to @banner.url
      
      click_stock = @banner.click_stock
      @banner.reload.click_stock.should be(click_stock - 1)
    end

    it "Decrements Click Stock" do
      get "click", :site_id=>@site.id, :id => @banner.id

      click_stock = @banner.click_stock
      @banner.reload.click_stock.should be(click_stock - 1)
    end

    it "Increments Clicks Count" do
      get "click", :site_id=>@site.id, :id => @banner.id

      clicks_count = @banner.clicks_count
      @banner.reload.clicks_count.should be(clicks_count + 1)
    end

    it "Saves click to database" do
      get "click", :site_id=>@site.id, :id => @banner.id
      Click.last.banner.id.should be(@banner.id)
    end

  end
  
end
