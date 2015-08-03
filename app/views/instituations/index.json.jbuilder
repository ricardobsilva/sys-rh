json.array!(@instituations) do |instituation|
  json.extract! instituation, :id, :name
  json.url instituation_url(instituation, format: :json)
end
