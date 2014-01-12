require 'spec_helper'

describe "Creating Customers" do

  context "Creating a valid customer" do

    it "displays the New Customer form" do
      visit '/'

      click_link "New Customer"

      fill_in "First Name", with: "John"
      fill_in "Last Name", with: "Doe"
      fill_in "Phone Number", with: "3031112222"
      fill_in "Address", with: "1234 S. Testing St."
      fill_in "Zip Code", with: "12345"

      click_button "Create"

      expect(page).to have_content("Customer has been created!")
    end
  end

end

