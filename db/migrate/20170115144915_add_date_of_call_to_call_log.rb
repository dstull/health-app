class AddDateOfCallToCallLog < ActiveRecord::Migration[5.0]
  def change
    add_column :call_logs, :date_of_call, :date
    change_column :call_logs, :time_of_call, :time
  end
end
