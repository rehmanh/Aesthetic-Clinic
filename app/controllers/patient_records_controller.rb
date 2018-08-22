class PatientRecordsController < ApplicationController
	before_action :require_signin, :require_admin_rights

  def index
    @records = PatientRecord.all
  end

  def show
    @record = PatientRecord.find(params[:id])
    session[:patient_record_id] = @record.id
  end

  def new
    @record = PatientRecord.new
    respond_to do |format|
      format.html
      format.js
    end
  end

  def create
    @record = PatientRecord.new(patient_record_params)
    if @record.save
      flash[:notice] = "Patient record successfully created."
      redirect_to @record
    else
      render :new
    end
  end

  def edit
    @record = PatientRecord.find(params[:id])
    respond_to do |format|
      format.html
      format.js
    end
  end

  def update
    @record = PatientRecord.find(params[:id])
    if @record.update(patient_record_params)
      flash[:notice] = "Patient record successfully updated"
      redirect_to @record
    else
      render :edit
    end
  end
  
  private

  def patient_record_params
    patient_record_params = params.require(:patient_record).permit(:first_name, :last_name, :email, :phone_number) 
  end

end
