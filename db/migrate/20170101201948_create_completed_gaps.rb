class CreateCompletedGaps < ActiveRecord::Migration[5.0]
  def change
    create_table :completed_gaps do |t|
      t.references :care_gap, foreign_key: true
      t.references :doctor, foreign_key: true
      t.date :date_of_completion

      t.timestamps
    end
  end
end
