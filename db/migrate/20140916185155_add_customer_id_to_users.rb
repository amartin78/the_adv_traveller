class AddCustomerIdToUsers < ActiveRecord::Migration
  def change
      add_column :users, :customer_id, :int
  end
end
