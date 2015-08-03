json.array!(@districts) do |district|
  json.extract! district, :id, :name, :administrative_region_id
  json.url district_url(district, format: :json)
end
