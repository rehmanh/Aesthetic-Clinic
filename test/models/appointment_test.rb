require "test_helper"

describe Appointment do

  setup do 
    @appointment = Appointment.new
    @appointment.location = "National Medical Center"
    @appointment.user_id = 2
    @appointment.complaint = "Charlie bit me and it really hurts!"
    @appointment.appointment_date_time = DateTime.new(2018, 8, 21, 3, 0, 0).in_time_zone('UTC')
  end

  it "should not be valid without a location, date and time, user, and complaint" do
    invalid_appointment = Appointment.new
    refute invalid_appointment.valid?
  end

  it "should be valid with the given correct fields" do 
    assert @appointment.valid? 
  end

end
