class AddRecordIdToPatientNotes < ActiveRecord::Migration[5.1]
  def up
    PatientNote.delete_all
    add_column :patient_notes, :patient_record_id, :integer
  end

  def down
    PatientNote.delete_all
    remove_column :patient_notes, :patient_record_id
  end
end
