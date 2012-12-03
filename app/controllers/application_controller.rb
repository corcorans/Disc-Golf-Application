class ApplicationController < ActionController::Base
  
  before_filter :require_login  
  
  protect_from_forgery
  
  private
    def current_user
      @_current_user ||= session[:current_user_id] &&
      User.find_by_id(session[:current_user_id])
    end
    
    def require_login
      unless logged_in?
        flash[:error] = "You must be logged in to access that page."
        redirect_to root_url
      end
    end
    
    def logged_in?
      !!current_user
    end
end