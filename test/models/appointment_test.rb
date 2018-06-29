require "test_helper"

describe Appointment do
  
  setup do
    @appointment = Appointment.new(location: "National Medical Center", appointment_date_time: Time.zone.now, complaint: "I am Numb and getting colder")
  end

  it "must be valid" do
    refute @appointment.valid?
  end
end
