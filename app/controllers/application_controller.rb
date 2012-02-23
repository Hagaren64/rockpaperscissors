class ApplicationController < ActionController::Base
  protect_from_forgery
before_filter do
    
  if session[:win].to_i > 0
    session[:win]=session[:win]
  else
    session[:win]=0
  end
  if session[:lose].to_i > 0
    session[:lose]=session[:lose]
  else
    session[:lose]=0
  end
end
end
