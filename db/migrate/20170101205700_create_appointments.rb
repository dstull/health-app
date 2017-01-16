class CreateAppointments < ActiveRecord::Migration[5.0]
  def change
    create_table :appointments do |t|
      t.references :member, foreign_key: true
      t.references :doctor, foreign_key: true
      t.datetime :date_of_visit
      t.boolean :transportation_required, default: false

      t.timestamps
    end
  end
end
