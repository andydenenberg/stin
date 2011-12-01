require 'spec_helper'

describe "orgs/edit.html.erb" do
  before(:each) do
    @org = assign(:org, stub_model(Org,
      :organization => "MyString",
      :division => "MyString",
      :address => "MyString",
      :city => "MyString",
      :description => "MyText",
      :background => "MyText"
    ))
  end

  it "renders the edit org form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => orgs_path(@org), :method => "post" do
      assert_select "input#org_organization", :name => "org[organization]"
      assert_select "input#org_division", :name => "org[division]"
      assert_select "input#org_address", :name => "org[address]"
      assert_select "input#org_city", :name => "org[city]"
      assert_select "textarea#org_description", :name => "org[description]"
      assert_select "textarea#org_background", :name => "org[background]"
    end
  end
end
