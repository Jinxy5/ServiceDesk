require 'spec_helper'

describe "computers/edit" do
  before(:each) do
    @computer = assign(:computer, stub_model(Computer,
      :model => "MyString"
    ))
  end

  it "renders the edit computer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", computer_path(@computer), "post" do
      assert_select "input#computer_model[name=?]", "computer[model]"
    end
  end
end
