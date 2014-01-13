class Customer < ActiveRecord::Base
  validates :first_name, :last_name, :phone_number, :address, :zip_code, 
            presence: true
end
