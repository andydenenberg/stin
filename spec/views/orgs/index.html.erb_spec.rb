require 'spec_helper'

describe "orgs/index.html.erb" do
  before(:each) do
    assign(:orgs, [
      stub_model(Org,
        :organization => "Organization",
        :division => "Division",
        :address => "Address",
        :city => "City",
        :description => "MyText",
        :background => "MyText"
      ),
      stub_model(Org,
        :organization => "Organization",
        :division => "Division",
        :address => "Address",
        :city => "City",
        :description => "MyText",
        :background => "MyText"
      )
    ])
  end

  it "renders a list of orgs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Organization".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Division".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "City".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
