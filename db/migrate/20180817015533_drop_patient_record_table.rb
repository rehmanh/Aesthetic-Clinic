class DropPatientRecordTable < ActiveRecord::Migration[5.1]
  def up
    drop_table :patient_records
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
