require 'spec_helper'

describe "computers/index" do
  before(:each) do
    assign(:computers, [
      stub_model(Computer,
        :model => "Model"
      ),
      stub_model(Computer,
        :model => "Model"
      )
    ])
  end

  it "renders a list of computers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Model".to_s, :count => 2
  end
end
