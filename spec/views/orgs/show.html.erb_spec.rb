require 'spec_helper'

describe "orgs/show.html.erb" do
  before(:each) do
    @org = assign(:org, stub_model(Org,
      :organization => "Organization",
      :division => "Division",
      :address => "Address",
      :city => "City",
      :description => "MyText",
      :background => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Organization/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Division/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Address/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/City/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
  end
end
