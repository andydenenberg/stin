require 'spec_helper'

describe "donations/show.html.erb" do
  before(:each) do
    @donation = assign(:donation, stub_model(Donation,
      :org_id => 1,
      :user_id => 1,
      :type => 1,
      :value => "9.99",
      :description => "MyText",
      :made_by => "Made By"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Made By/)
  end
end
