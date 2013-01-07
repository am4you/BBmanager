require 'spec_helper'

describe "Index page" do

  it "should have the content 'BBmanager'" do
    visit '/static_pages/index'
    page.should have_content('BBmanager')
  end
end

