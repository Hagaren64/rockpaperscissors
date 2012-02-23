class ClearController < ApplicationController
  def index
    	session[:lose]=0
    	session[:win]=0
  end
end
