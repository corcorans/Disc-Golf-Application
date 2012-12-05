class SessionsController < ApplicationController
  
  # Allows a user to access to login page if not logged in.
  skip_before_filter :require_login, :only => [:new, :create, :show]

  #Create the session for the user.
  def create
    user = User.where(:username => params[:username]).first
    if user and user.password == params[:password]
      session[:current_user_id] = user.id
      redirect_to players_path
    else
      redirect_to root_url, :alert =>  "Invalid username or password"   
    end
  end
 
  #Delete the session for the current user.
  def destroy
    session[:current_user_id] = nil
    redirect_to root_url, :notice => "You have successfully logged out"
  end
end
