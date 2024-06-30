class ApplicationController < ActionController::Base
  helper_method :current_user
  before_action :login_required
  
  def current_user
     @current_user ||= User.find(session[:user_id]) if session[:user_id] 
  end

  def authenticate_user!
     redirect_to login_path unless current_user 
  end

  private

  def login_required
    redirect_to login_path unless current_user
  end
  
  
end