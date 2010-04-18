class ApplicationController < ActionController::Base
  protect_from_forgery
  layout 'application'
  
  private
  
  def current_user
    current_user_session && current_user_session.record
  end
  
  def current_user_session
    UserSession.find
  end
  
  def login_required
    redirect_to root_path, :notice => "You must be logged in to do that." if !logged_in?
  end
  
  def logged_in?
    !!current_user
  end
      
  
  helper_method :current_user, :logged_in?
end
