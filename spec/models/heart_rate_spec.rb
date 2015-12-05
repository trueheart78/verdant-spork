require 'rails_helper'

RSpec.describe HeartRate, type: :model do

  subject(:heart_rate) { FactoryGirl.create(:heart_rate) }

  describe '#karvonen_rates' do
    before do
      heart_rate.age = 22
      heart_rate.resting_pulse = 65
    end

    it 'works' do
      expect(heart_rate.karvonen_rates).to eq(karvonen_rates)
    end

    let(:karvonen_rates) do
      [
        { intensity: 55, rate: 138 },
        { intensity: 60, rate: 145 },
        { intensity: 65, rate: 151 },
        { intensity: 70, rate: 158 },
        { intensity: 75, rate: 165 },
        { intensity: 80, rate: 171 },
        { intensity: 85, rate: 178 },
        { intensity: 90, rate: 185 },
        { intensity: 95, rate: 191 },
      ]
    end
  end

  describe '#name' do

    it 'supports a regular name' do
      subject.name = Faker::Name.first_name

      expect(heart_rate).to be_valid
    end

    it 'errors on an empty name' do
      heart_rate.name = ""

      expect(heart_rate).to_not be_valid
    end
  end

  describe '#age' do

    it 'must be an integer' do
      heart_rate.age = 1.0

      expect(heart_rate).to_not be_valid
    end
  end

  describe '#resting_pulse' do

    it 'must be an integer' do
      heart_rate.resting_pulse = 60.124

      expect(heart_rate).to_not be_valid
    end
  end
end
