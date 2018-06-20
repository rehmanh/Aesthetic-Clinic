require "test_helper"

describe Appointment do
  let(:appointment) { Appointment.new }

  it "must be valid" do
    value(appointment).must_be :valid?
  end
end
