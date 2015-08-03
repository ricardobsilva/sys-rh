json.array!(@stockings) do |stocking|
  json.extract! stocking, :id, :data, :workload, :obs, :function_id, :local_id
  json.url stocking_url(stocking, format: :json)
end
