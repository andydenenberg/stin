require 'spec_helper'

describe "donations/edit.html.erb" do
  before(:each) do
    @donation = assign(:donation, stub_model(Donation,
      :org_id => 1,
      :user_id => 1,
      :type => 1,
      :value => "9.99",
      :description => "MyText",
      :made_by => "MyString"
    ))
  end

  it "renders the edit donation form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => donations_path(@donation), :method => "post" do
      assert_select "input#donation_org_id", :name => "donation[org_id]"
      assert_select "input#donation_user_id", :name => "donation[user_id]"
      assert_select "input#donation_type", :name => "donation[type]"
      assert_select "input#donation_value", :name => "donation[value]"
      assert_select "textarea#donation_description", :name => "donation[description]"
      assert_select "input#donation_made_by", :name => "donation[made_by]"
    end
  end
end
