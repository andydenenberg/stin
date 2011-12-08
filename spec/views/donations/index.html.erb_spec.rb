require 'spec_helper'

describe "donations/index.html.erb" do
  before(:each) do
    assign(:donations, [
      stub_model(Donation,
        :org_id => 1,
        :user_id => 1,
        :type => 1,
        :value => "9.99",
        :description => "MyText",
        :made_by => "Made By"
      ),
      stub_model(Donation,
        :org_id => 1,
        :user_id => 1,
        :type => 1,
        :value => "9.99",
        :description => "MyText",
        :made_by => "Made By"
      )
    ])
  end

  it "renders a list of donations" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Made By".to_s, :count => 2
  end
end
