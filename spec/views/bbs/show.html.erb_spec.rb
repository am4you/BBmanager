require 'spec_helper'

describe "bbs/show" do
  before(:each) do
    @bb = assign(:bb, stub_model(Bb,
      :name => "Name",
      :address => "Address",
      :city => "City",
      :zipcode => 1,
      :area => "Area",
      :state => "State",
      :phone => "Phone",
      :fax => "Fax",
      :web => "Web",
      :user_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Address/)
    rendered.should match(/City/)
    rendered.should match(/1/)
    rendered.should match(/Area/)
    rendered.should match(/State/)
    rendered.should match(/Phone/)
    rendered.should match(/Fax/)
    rendered.should match(/Web/)
    rendered.should match(/2/)
  end
end
