require "test_helper"

describe PatientNote do
  let(:patient_note) { PatientNote.new }

  it "must be valid" do
    value(patient_note).must_be :valid?
  end
end
