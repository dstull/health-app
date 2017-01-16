class AddMemberIdToCompletedGap < ActiveRecord::Migration[5.0]
  def change
    add_reference :completed_gaps, :member, foreign_key: true
    remove_column :completed_gaps, :call_log_id
  end
end
