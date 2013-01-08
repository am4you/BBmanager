require 'spec_helper'

describe "bbs/edit" do
  before(:each) do
    @bb = assign(:bb, stub_model(Bb,
      :name => "MyString",
      :address => "MyString",
      :city => "MyString",
      :zipcode => 1,
      :area => "MyString",
      :state => "MyString",
      :phone => "MyString",
      :fax => "MyString",
      :web => "MyString",
      :user_id => 1
    ))
  end

  it "renders the edit bb form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => bbs_path(@bb), :method => "post" do
      assert_select "input#bb_name", :name => "bb[name]"
      assert_select "input#bb_address", :name => "bb[address]"
      assert_select "input#bb_city", :name => "bb[city]"
      assert_select "input#bb_zipcode", :name => "bb[zipcode]"
      assert_select "input#bb_area", :name => "bb[area]"
      assert_select "input#bb_state", :name => "bb[state]"
      assert_select "input#bb_phone", :name => "bb[phone]"
      assert_select "input#bb_fax", :name => "bb[fax]"
      assert_select "input#bb_web", :name => "bb[web]"
      assert_select "input#bb_user_id", :name => "bb[user_id]"
    end
  end
end
