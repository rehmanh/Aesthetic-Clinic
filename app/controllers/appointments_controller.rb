class AppointmentsController < ApplicationController

  before_action :require_signin
  before_action :set_user
  before_action :require_admin_rights, only: [:index]

  def index
    @appointments = Appointment.all
  end

  def new
    if @user.has_max_appointments
      flash[:alert] = "You cannot schedule more than two appointments at once."
      redirect_to @user
    else
      @appointment = @user.appointments.new
    end
    respond_to do |format|
      format.html
      format.js
    end
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

  def destroy
    @appointment = @user.appointments.find(params[:id])
    @appointment.destroy
    flash[:notice] = "Appointment successfully cancelled."
    redirect_to @user
  end

  def edit
    @appointment = @user.appointments.find(params[:id])
  end

  def update
    @appointment = @user.appointments.find(params[:id])
    if @appointment.update(appointment_params)
      flash[:notice] = "Your appointment was updated."
      redirect_to @user
    else
      render :edit
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
