class AddCompletionFlagToAppointment < ActiveRecord::Migration[5.0]
  def change
    add_column :appointments, :completed, :boolean, default: false
  end
end
