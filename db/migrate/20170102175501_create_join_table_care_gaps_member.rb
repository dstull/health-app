class CreateJoinTableCareGapsMember < ActiveRecord::Migration[5.0]
  def change
    create_join_table :care_gaps, :members do |t|
      t.index :care_gap_id
      t.index :member_id
    end
  end
end
