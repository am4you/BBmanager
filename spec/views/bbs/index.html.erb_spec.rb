require 'spec_helper'

describe "bbs/index" do
  before(:each) do
    assign(:bbs, [
      stub_model(Bb,
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
      ),
      stub_model(Bb,
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
      )
    ])
  end

  it "renders a list of bbs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Area".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Fax".to_s, :count => 2
    assert_select "tr>td", :text => "Web".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
