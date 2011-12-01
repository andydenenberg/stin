require 'spec_helper'

describe "donors/edit.html.erb" do
  before(:each) do
    @donor = assign(:donor, stub_model(Donor,
      :first => "MyString",
      :last => "MyString",
      :address => "MyString",
      :city => "MyString",
      :facebook => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit donor form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => donors_path(@donor), :method => "post" do
      assert_select "input#donor_first", :name => "donor[first]"
      assert_select "input#donor_last", :name => "donor[last]"
      assert_select "input#donor_address", :name => "donor[address]"
      assert_select "input#donor_city", :name => "donor[city]"
      assert_select "input#donor_facebook", :name => "donor[facebook]"
      assert_select "textarea#donor_description", :name => "donor[description]"
    end
  end
end
