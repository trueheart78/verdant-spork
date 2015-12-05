require 'rails_helper'

RSpec.describe "heart_rates/new", type: :view do
  before(:each) do
    assign(:heart_rate, HeartRate.new(
      :name => "MyString",
      :age => 1,
      :resting_pulse => 1
    ))
  end

  it "renders new heart_rate form" do
    render

    assert_select "form[action=?][method=?]", heart_rates_path, "post" do

      assert_select "input#heart_rate_name[name=?]", "heart_rate[name]"

      assert_select "input#heart_rate_age[name=?]", "heart_rate[age]"

      assert_select "input#heart_rate_resting_pulse[name=?]", "heart_rate[resting_pulse]"
    end
  end
end
