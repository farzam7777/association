class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.references :patient, index: true, foreign_key: true
      t.references :doctor, index: true, foreign_key: true
      t.date :date

      t.timestamps null: false
    end
  end
end
