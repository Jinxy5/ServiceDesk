require 'spec_helper'

describe "Welcome page" do
  before do
    visit '/'
  end

  context "clicking the Customers link" do
    it "should redirect to the Customer index" do
      click_link "Customers"

      expect(page).to have_content("Customers")
    end
  end

end

