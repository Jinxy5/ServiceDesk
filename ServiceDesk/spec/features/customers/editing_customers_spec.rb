require 'spec_helper'

describe "Editing Customers" do
  let!(:customer) { FactoryGirl.create(:customer) }

  before do
    visit '/'
    click_link "Customers"
    click_link customer.full_name
  end

  describe "updating an existing attribute" do
    it "displays the edit forms" do
      click_button "Edit"
    end
  
    it "displays the new data" do
      fill_in "Last name", with: "Pancho"

      click_button "Update"
      expect(page).to have_content("Customer updated!")
      expect(customer.last_name).to equal("Pancho")
    end
  end

end
