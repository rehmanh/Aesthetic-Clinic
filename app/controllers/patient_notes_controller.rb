class PatientNotesController < ApplicationController
  before_action :require_admin_rights, :require_signin
  before_action :set_patient_record

  def new
    @patient_note = @record.patient_notes.new
    respond_to do |format|
      format.html
      format.js
    end
  end

  def create
    fail
    @patient_note = @record.patient_notes.new(patient_note_params)
    @patient_note.patient_record = @record 
    if @patient_note.save
      flash[:notice] = "Note added for " # + record_full_name @record
      redirect_to @record
    else
      render :new
    end
  end

  def index
  end

  def destroy
  end

  def edit
  end

  def update
  end

  private

  def patient_note_params
    params.require(:patient_note).permit(:notes)
  end

  def set_patient_record
    @record = PatientRecord.find(session[:patient_record_id])
  end

end

