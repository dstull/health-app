class AddCallLogIdToAppointment < ActiveRecord::Migration[5.0]
  def change
    add_reference :appointments, :call_log, foreign_key: true
  end
end
