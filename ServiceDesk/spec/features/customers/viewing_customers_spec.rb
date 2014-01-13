require 'spec_helper'

describe "Viewing Customers" do

  before do
    visit '/'
    click_link "Customers"
  end

  context "when clicking a Customer name" do
    #Click Customer name link
    it "should show the Customer information" do
      #Display Customer factory attributes   
    end
  end

end

