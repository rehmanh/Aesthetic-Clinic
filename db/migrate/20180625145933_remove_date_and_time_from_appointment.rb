class RemoveDateAndTimeFromAppointment < ActiveRecord::Migration[5.0]
  def change
    remove_column :appointments, :date_of_appointment
    remove_column :appointments, :time_of_appointment
  end
end
