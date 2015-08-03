json.array!(@type_locals) do |type_local|
  json.extract! type_local, :id, :name
  json.url type_local_url(type_local, format: :json)
end
