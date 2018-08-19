class CreatePatientNotes < ActiveRecord::Migration[5.1]
  def change
    create_table :patient_notes do |t|
      t.text :notes

      t.timestamps
    end
  end
end
