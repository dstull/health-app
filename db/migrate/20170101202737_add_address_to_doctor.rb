class AddAddressToDoctor < ActiveRecord::Migration[5.0]
  def change
    add_column :doctors, :address, :string
  end
end
