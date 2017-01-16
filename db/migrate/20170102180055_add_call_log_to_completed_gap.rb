class AddCallLogToCompletedGap < ActiveRecord::Migration[5.0]
  def change
    add_reference :completed_gaps, :call_log, foreign_key: true
  end
end
