class SessionsController < ApplicationController

  def new
    # emptiness
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to(session[:intended_url] || user)
      session[:intended_url] = nil
    else
      flash[:alert] = "Incorrect Email and/or Password. Please try again."
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = "Sign out successful."
    redirect_to procedures_url
  end

end
