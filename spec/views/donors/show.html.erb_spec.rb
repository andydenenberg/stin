require 'spec_helper'

describe "donors/show.html.erb" do
  before(:each) do
    @donor = assign(:donor, stub_model(Donor,
      :first => "First",
      :last => "Last",
      :address => "Address",
      :city => "City",
      :facebook => "Facebook",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/First/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Last/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Address/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/City/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Facebook/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
  end
end
