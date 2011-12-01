require 'spec_helper'

describe "donors/index.html.erb" do
  before(:each) do
    assign(:donors, [
      stub_model(Donor,
        :first => "First",
        :last => "Last",
        :address => "Address",
        :city => "City",
        :facebook => "Facebook",
        :description => "MyText"
      ),
      stub_model(Donor,
        :first => "First",
        :last => "Last",
        :address => "Address",
        :city => "City",
        :facebook => "Facebook",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of donors" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "First".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Last".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "City".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Facebook".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
