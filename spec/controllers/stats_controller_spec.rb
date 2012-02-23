require 'spec_helper'

describe StatsController do
  render_views

  describe "GET stats" do
    it "should be successful" do
      get 'index'
      response.should be_success
    end
  end
  
  describe "Test Stats" do
    it "should get <h1>Stats</h1>" do
      get :index
      response.should have_selector("h1", :content => "Stats")
    end
  end

end
