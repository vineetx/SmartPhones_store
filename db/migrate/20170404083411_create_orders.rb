class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.string :name
      t.string :address
      t.integer :pin, limit: 7
      t.integer :mobile_no, limit: 11
      t.integer  "customer"
   	  t.integer  "cart_id"

      t.timestamps
    end
  end
end
