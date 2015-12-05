require 'rails_helper'

RSpec.describe "heart_rates/index", type: :view do
  before(:each) do
    assign(:heart_rates, [
      HeartRate.create!(
        :name => "Name",
        :age => 1,
        :resting_pulse => 2
      ),
      HeartRate.create!(
        :name => "Name",
        :age => 1,
        :resting_pulse => 2
      )
    ])
  end

  it "renders a list of heart_rates" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
