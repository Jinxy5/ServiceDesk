class Customer < ActiveRecord::Base
  validates :first_name, :last_name, :phone_number, :address, :zip_code, 
            presence: true

  def full_name
    "#{self.first_name} #{self.last_name}"
  end
end
