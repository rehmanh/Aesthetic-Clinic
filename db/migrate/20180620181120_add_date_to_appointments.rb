class AddDateToAppointments < ActiveRecord::Migration[5.0]
  def change
    add_column :appointments, :date_of_appointment, :date 
  end
end
