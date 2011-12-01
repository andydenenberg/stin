require 'spec_helper'

describe "activities/show.html.erb" do
  before(:each) do
    @activity = assign(:activity, stub_model(Activity,
      :name => "Name",
      :description => "MyText",
      :org => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
  end
end
