require 'spec_helper'

describe "Viewing Customers" do
  let!(:customer) { FactoryGirl.create(:customer) }

  before do
    visit '/'
    click_link "Customers"
  end
  
  describe "the index" do
    it "lists all Customers" do
      expect(page).to have_link(customer.full_name)
    end
  end

  describe "the Customer page" do
    it "shows Customer details" do
      click_link customer.full_name
      #Display Customer factory attributes   
    end
  end

end

