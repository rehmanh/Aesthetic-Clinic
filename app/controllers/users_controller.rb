class UsersController < ApplicationController
 
  before_action :require_signin, except: [:new, :create] # require_signin is defined in ApplicationController
  before_action :require_admin_rights, only: [:index]
  
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @appointments = @user.appointments # to fetch user's appointments
  end

  def new
    @user = User.new
    respond_to do |format|
      format.html
      format.js
    end
  end

  def create
    @user = User.new(user_params) 
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "Your account was successfully created."
      redirect_to @user
    else
      render :new
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    session[:user_id] = nil
    redirect_to @user
    flash[:notice] = "Your account was successfully deleted."
  end

  def edit
    @user = User.find(params[:id])
    unless @user == current_user
      flash[:alert] = "Cannot perform that action"
      redirect_to @user
    end
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:notice] = "Your account was successfully updated."
      redirect_to @user
    else
      render :edit
    end
  end

private

  def user_params
    user_params = params.require(:user).permit!
  end

  def require_correct_user
    unless is_user_admin? # current_user == @user && is_user_admin? 
      flash[:alert] = "Unauthorized access"
      redirect_to procedures_path
    end 
  end

end
