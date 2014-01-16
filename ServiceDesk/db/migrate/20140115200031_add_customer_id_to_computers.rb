class AddCustomerIdToComputers < ActiveRecord::Migration
  def change
    add_column :computers, :customer_id, :integer
    add_index :computers, :customer_id
  end
end
