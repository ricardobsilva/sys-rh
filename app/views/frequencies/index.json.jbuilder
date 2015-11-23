json.array!(@frequencies) do |frequency|
  json.extract! frequency, :id, :person_id, :frequency_date, :time_input, :time_output
  json.url frequency_url(frequency, format: :json)
end
