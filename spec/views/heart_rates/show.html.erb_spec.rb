require 'rails_helper'

RSpec.describe "heart_rates/show", type: :view do
  before(:each) do
    @heart_rate = assign(:heart_rate, HeartRate.create!(
      :name => "Name",
      :age => 1,
      :resting_pulse => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
  end
end
