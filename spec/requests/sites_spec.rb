require 'spec_helper'

describe "Sites" do
  
  before(:each) do
    sign_in_valid_user
  end

  describe "Index" do
    it "Show user's sites list" do
      visit sites_path
      response.status.should be(200)
    end
  end
  
end
