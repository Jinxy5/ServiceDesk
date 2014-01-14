require 'spec_helper'

feature "Viewing Customers" do

  before do
    visit '/'
    click_link "Customers"
  end

  describe "the main Customer page" do
    let!(:customer) { FactoryGirl.create(:customer) }

    it "should show a list of all the Customers" do
      expect(page).to have_content(customer.full_name)
    end
  end

  describe "clicking a Customer name" do
    let!(:customer) { FactoryGirl.create(:customer) }
    click_link customer.full_name

    it "should show the Customer information" do
      #Display Customer factory attributes   
    end
  end

end

