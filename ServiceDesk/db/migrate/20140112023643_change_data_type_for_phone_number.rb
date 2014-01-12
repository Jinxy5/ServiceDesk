class ChangeDataTypeForPhoneNumber < ActiveRecord::Migration
  def change
    change_table :customers do |t|
      t.change :phone_number, :bigint
    end
  end
end
