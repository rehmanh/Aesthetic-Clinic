class RemoveCompletedColumnFromAppointments < ActiveRecord::Migration[5.1]
  def change
    remove_column :appointments, :completed    
  end
end
