module PatientNotesHelper

  def record_holders_name record
    return record.first_name + " " + record.last_name
  end

end
