class CreatePatientRecords < ActiveRecord::Migration[5.1]
  def change
    create_table :patient_records do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone_number
      t.references :recordable, polymorphic: true

      t.timestamps
    end
  end
end
