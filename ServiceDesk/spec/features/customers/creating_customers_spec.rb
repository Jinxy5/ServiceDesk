require 'spec_helper'

describe "Creating Customers" do
  let!(:customer) { FactoryGirl.create(:customer) }

  before(:each) do
    visit '/'
    click_link "Customers"
    click_link "New Customer"
  end

  context "when valid" do
    it "display success" do

      fill_in "First Name", with: customer.first_name
      fill_in "Last Name", with: customer.last_name
      fill_in "Phone Number", with: customer.phone_number
      fill_in "Address", with: customer.address
      fill_in "Zip Code", with: customer.zip_code

      click_button "Create"

      expect(page).to have_content("Customer has been created!")
    end
  end

  context "when invalid" do
    it "display an error" do
      #Leave all forms blank
      click_button "Create"

      expect(page).to have_content("Customer not created.")
      expect(page).to have_content("First name can't be blank")
    end
  end

end

