json.array!(@type_patios) do |type_patio|
  json.extract! type_patio, :id, :name, :initial
  json.url type_patio_url(type_patio, format: :json)
end
