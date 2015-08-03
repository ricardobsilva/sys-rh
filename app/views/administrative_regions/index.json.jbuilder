json.array!(@administrative_regions) do |administrative_region|
  json.extract! administrative_region, :id, :name, :initials
  json.url administrative_region_url(administrative_region, format: :json)
end
