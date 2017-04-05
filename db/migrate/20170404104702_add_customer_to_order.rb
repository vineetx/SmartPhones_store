class AddCustomerToOrder < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :customer, :integer
  end
end
