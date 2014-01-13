require 'spec_helper'

describe "Creating Customers" do

  context "Creating a valid customer" do
    let!(:customer) { FactoryGirl.create(:customer) }
    
    before do
      visit '/'
      click_link "New Customer"
    end

    it "displays a successful creation" do

      fill_in "First Name", with: customer.first_name
      fill_in "Last Name", with: customer.last_name
      fill_in "Phone Number", with: customer.phone_number
      fill_in "Address", with: customer.address
      fill_in "Zip Code", with: customer.zip_code

      click_button "Create"

      expect(page).to have_content("Customer has been created!")
    end
  end

  context "Creating an invalid customer" do
    before do
      visit '/'
      click_link "New Customer"
    end

    it "displays an error message" do
      #Leave all forms blank
      click_button "Create"

      expect(page).to have_content("Customer not created.")
      expect(page).to have_content("First name can't be blank")
    end
  end

end

