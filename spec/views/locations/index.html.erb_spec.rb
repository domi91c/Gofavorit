require 'spec_helper'

describe "locations/index", :type => :view do
  before(:each) do
    assign(:locations, [
      Location.create!(
        :name => "Name",
        :address => "Address",
        :longitude => 1.5,
        :latitude => 1.5,
        :gmaps => false
      ),
      Location.create!(
        :name => "Name",
        :address => "Address",
        :longitude => 1.5,
        :latitude => 1.5,
        :gmaps => false
      )
    ])
  end

  it "renders a list of locations" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
