class RemovePatientNotes < ActiveRecord::Migration[5.1]
  def up
    drop_table :patient_notes
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
