class CreateCareGaps < ActiveRecord::Migration[5.0]
  def change
    create_table :care_gaps do |t|
      t.string :name

      t.timestamps
    end
  end
end
