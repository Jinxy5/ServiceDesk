class Customer < ActiveRecord::Base
  has_many :computers

  validates :first_name, :last_name, 
  			presence: true, 
  			length: { maximum: 23 }

  validates :address, presence: true, 
  					  length: { maximum: 95 }

  validates :phone_number, 
  			presence: true, 
    		length: { maximum: 10 }, 
    		numericality: { only_integer: true }
  
  validates :zip_code, 
  			presence: true, 
    		length: { maximum: 5 },
    		numericality: { only_integer: true }


  def full_name
    "#{self.first_name} #{self.last_name}"
  end
end
