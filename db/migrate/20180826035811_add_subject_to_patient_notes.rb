class AddSubjectToPatientNotes < ActiveRecord::Migration[5.1]
  def change
    add_column :patient_notes, :subject, :string
  end
end
