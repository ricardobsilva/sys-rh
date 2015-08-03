json.array!(@locals) do |local|
  json.extract! local, :id, :name, :name_abr, :initials, :tel1, :tel2, :tel3, :type_local_id, :institution_id
  json.url local_url(local, format: :json)
end
