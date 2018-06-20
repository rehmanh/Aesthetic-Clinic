class MakeAppointmentsAJoinTable < ActiveRecord::Migration[5.0]

  def up
    Appointment.delete_all
    add_column    :appointments, :user_id, :integer
  end

  def down
    Appointment.delete_all
    remove_column    :appointments, :user_id, :integer
  end

end
