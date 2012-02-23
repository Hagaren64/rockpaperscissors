require 'spec_helper'

describe PagesController do

  describe "GET 'throw'" do
    it "should be successful" do
      get 'throw'
      response.should be_success
    end
  end

  describe "GET 'clear'" do
    it "should be successful" do
      get 'clear'
      response.should be_success
    end
  end

  describe "GET 'stats'" do
    it "should be successful" do
      get 'stats'
      response.should be_success
    end
  end

end
