require 'spec_helper'

describe "Welcome page" do
  describe "GET /" do
    it "Show welcome message" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit root_path
      page.should have_css ".hero-unit"
    end
    
    
  end
end
