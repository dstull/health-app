class ChangeMarriedStatusOnMembers < ActiveRecord::Migration[5.0]
  def change
    change_column :members, :marital_status, :string
  end
end
