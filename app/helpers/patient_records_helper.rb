module PatientRecordsHelper

  def display_tick record
    if record.has_user_account?
      return "✓"
    end
  end

end
