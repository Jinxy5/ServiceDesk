require 'spec_helper'

describe "Editing Customers" do

  before do
    visit '/'
  end

  it "updates an existing attribute" do
    customer =  FactoryGirl.create(:customer)
    click_link "Customers"

    click_link customer.full_name
    click_link "Edit"

    fill_in "Last Name", with: "Pancho"

    click_button "Update"
    expect(page).to have_content("Pancho")
    expect(page).to have_content("Customer updated!")
  end
end

