class CreateAppointments < ActiveRecord::Migration[5.0]
  def change
    create_table :appointments do |t|
      t.datetime :when
      t.string :location
      t.text :complaint

      t.timestamps
    end
  end
end
