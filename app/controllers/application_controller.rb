class ApplicationController < ActionController::Base
  
  before_filter :require_login  
  
  protect_from_forgery
  
  private
    # Looks to see if a user is currently logged in.
    def current_user
      @_current_user ||= session[:current_user_id] &&
      User.find_by_id(session[:current_user_id])
    end
    
    # If a user is not logged in and is trying to view a page, then
    # a message will be displayed and redirected to the login page.
    def require_login
      unless logged_in?
        flash[:error] = "You must be logged in to access that page."
        redirect_to root_url
      end
    end
    
    # Checks the current_user logged in.
    def logged_in?
      !!current_user
    end
end
