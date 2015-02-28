class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.string :doctor_name
      t.datetime :appointment_time
      t.string :location
      t.string :doctor_phone_number
      t.text :note
      t.belongs_to :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :appointments, :users
  end
end
