class RemoveUserIdFromPatientNotes < ActiveRecord::Migration[5.1]
  def change
    remove_column :patient_notes, :user_id
  end
end
