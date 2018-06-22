class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # this is defined here so that many other controllers can use it 
  def require_signin
    unless current_user
      session[:intended_url] = request.url
      redirect_to new_session_path
      flash[:alert] = "Please sign in first"
    end
  end
  
  def require_admin_rights
    unless is_user_admin?
      flash[:alert] = "You do not have permission to view this page"
      redirect_to root_url
    end
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def is_user_admin?
    current_user && current_user.admin?
  end

  helper_method :current_user
  helper_method :is_user_admin?

end
