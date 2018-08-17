require "test_helper"

describe PatientRecord do
  let(:patient_record) { PatientRecord.new }

  it "must be valid" do
    value(patient_record).must_be :valid?
  end
end
