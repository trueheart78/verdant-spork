json.array!(@heart_rates) do |heart_rate|
  json.extract! heart_rate, :id, :name, :age, :resting_pulse
  json.url heart_rate_url(heart_rate, format: :json)
end
