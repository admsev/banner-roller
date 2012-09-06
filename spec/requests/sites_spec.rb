require 'spec_helper'
require 'pp'
describe "Sites" do
  
  before(:each) do
    @user = FactoryGirl.create(:user)
    @site = FactoryGirl.create(:site, :user => @user)
    @banner = FactoryGirl.create(:banner, :site => @site)
    
    visit new_user_session_path
    within("#new_user") do
      fill_in 'Email', :with => @user.email
      fill_in 'Password', :with => @user.password
    end
    click_button 'Sign in'
    #sign_in_valid_user
    
  end

  describe "Index" do
    it "Show user's sites list" do
      visit sites_path
      page.current_url.should eq(sites_url)
      page.should have_css("table.sites")
      page.should have_css("#site_#{@site.id}")
    end
  end
  
end
