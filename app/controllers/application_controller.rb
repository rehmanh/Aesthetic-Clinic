class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # this is defined here so that many other controllers can use it 
  def require_signin
    unless session[:user_id] = nil
      redirect_to new_session_path
      flash[:alert] = "Please sign in first"
    end
  end

end
