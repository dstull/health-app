class CreateMembers < ActiveRecord::Migration[5.0]
  def change
    create_table :members do |t|
      t.string :last_name
      t.string :first_name
      t.string :middle_initial
      t.string :id_number
      t.date :date_of_birth
      t.boolean :gender
      t.string :home_number
      t.string :cell_number
      t.string :address
      t.string :alternate_address
      t.date :date_of_enrollment
      t.date :date_of_disenrollment
      t.string :line_of_business
      t.string :primary_language
      t.boolean :interpreter_needed
      t.string :ethnicity
      t.boolean :marital_status

      t.timestamps
    end
  end
end
