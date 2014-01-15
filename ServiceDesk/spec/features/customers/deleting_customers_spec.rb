require 'spec_helper'

describe "Deleting Customers" do
  let!(:customer) { FactoryGirl.create(:customer) }

  before do
    visit '/'
    click_link 'Customers'
  end

  it "should delete the Customer" do
    click_link customer.full_name

    click_button 'Delete Customer'

    expect(page).to have_content("Customer has been destroyed.")
    expect(page).to_not have_content(customer.full_name)
  end
  
end

