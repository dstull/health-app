class AddFieldsToMembers < ActiveRecord::Migration[5.0]
  def change
    add_column :members, :work_number, :string
    add_reference :members, :primary_care_physician, index: true
  end
end
