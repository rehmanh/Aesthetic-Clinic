class PatientRecordsController < ApplicationController
	before_action :require_signin, :require_admin_rights

  def index
    @records = PatientRecord.all
  end

  def show
    @record = PatientRecord.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end
  
  private

  def patient_record_params
    patient_record_params = params.require(:patient_record).permit(:first_name, :last_name, :email, :phone_number) 
  end

end
