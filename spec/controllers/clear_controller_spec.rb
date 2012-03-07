require 'spec_helper'

describe ClearController do
  render_views

  describe "GET clear page" do
    it "should be successful" do
      get 'index'
      response.should be_success
    end
  end
  
  describe "Test clear page" do
    it "should contain <h1>CLEAR</h1>" do
      get :index
      response.should have_selector("h1", :content => "CLEAR")
    end
  end

end
