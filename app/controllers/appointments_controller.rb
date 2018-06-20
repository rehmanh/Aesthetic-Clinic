class AppointmentsController < ApplicationController

  before_action :require_signin
  before_action :set_user

  def index
    @appointments = @user.appointments
  end

  def new
    @appointment = @user.appointments.new
  end

  def create
    @appointment = @user.appointments.new(appointment_params)
    @appointment.user = current_user
    if @appointment.save 
      flash[:notice] = "Your appointment was scheduled"
      redirect_to @user
    else
      render :new
    end
  end

private
  
  def appointment_params
    params.require(:appointment).permit!
  end

  def set_user
   @user = User.find(session[:user_id])
  end

end
