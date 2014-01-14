namespace :db do
  desc "Sample Customers"
    task populate: :environment do
      4.times do |n|
        first_name  = Faker::Name.first_name
        last_name = Faker::Name.last_name
        address = Faker::Address.street_address
        #Currently the input form is not sanitized; can't use the Faker gem.yet
        phone_number = (0..9).to_a.shuffle[0,10].join
        #Only allow 5 digit zip codes
        zip_code = Faker::Address.zip[0..4]
        Customer.create!(first_name: first_name,
                         last_name: last_name,
                         phone_number: phone_number,
                         address: address,
                         zip_code: zip_code)
      end
    end
end
