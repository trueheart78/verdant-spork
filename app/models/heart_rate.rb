class HeartRate < ActiveRecord::Base
  validates :name, presence: true
  validates :age, :resting_pulse, numericality: { only_integer: true }

  # http://www.sport-fitness-advisor.com/heart-rate-reserve.html
  def karvonen_rates
    rates = []
    55.step(95, 5) do |intensity|
      intensity_rate = intensity.to_f / 100
      rates << { intensity: intensity, rate: rate(intensity_rate).round }
    end
    rates
  end

  private

  def rate(intensity_rate)
    (heart_rate_reserve * intensity_rate) + resting_pulse
  end

  def max_rate
    220 - age
  end

  def heart_rate_reserve
    max_rate - resting_pulse
  end
end
