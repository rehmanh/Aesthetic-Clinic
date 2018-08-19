class PatientNote < ApplicationRecord
  belongs_to :patient_record
  validates_associated :patient_record

  validates :notes, presence: true
end
