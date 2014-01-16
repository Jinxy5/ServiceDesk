class AddTicketToCustomer < ActiveRecord::Migration
  def change
    add_column :customers, :ticket, :boolean
  end
end
