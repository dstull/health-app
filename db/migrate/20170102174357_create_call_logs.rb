class CreateCallLogs < ActiveRecord::Migration[5.0]
  def change
    create_table :call_logs do |t|
      t.references :member, foreign_key: true
      t.datetime :time_of_call
      t.references :user, foreign_key: true
      t.string :result_of_call
      t.string :pcp_provider_call
      t.text :comments

      t.timestamps
    end
  end
end
