require 'spec_helper'

describe "donors/new.html.erb" do
  before(:each) do
    assign(:donor, stub_model(Donor,
      :first => "MyString",
      :last => "MyString",
      :address => "MyString",
      :city => "MyString",
      :facebook => "MyString",
      :description => "MyText"
    ).as_new_record)
  end

  it "renders new donor form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => donors_path, :method => "post" do
      assert_select "input#donor_first", :name => "donor[first]"
      assert_select "input#donor_last", :name => "donor[last]"
      assert_select "input#donor_address", :name => "donor[address]"
      assert_select "input#donor_city", :name => "donor[city]"
      assert_select "input#donor_facebook", :name => "donor[facebook]"
      assert_select "textarea#donor_description", :name => "donor[description]"
    end
  end
end
