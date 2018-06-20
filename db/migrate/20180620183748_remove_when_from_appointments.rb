class RemoveWhenFromAppointments < ActiveRecord::Migration[5.0]
  def change
    remove_column :appointments, :when
  end
end
