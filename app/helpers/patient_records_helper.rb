module PatientRecordsHelper

  def display_tick record
    if record.has_user_account?
      return "✓"
    end
  end
  
  def record_full_name record
    record.first_name + " " + record.last_name
  end


end
