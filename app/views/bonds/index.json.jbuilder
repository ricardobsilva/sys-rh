json.array!(@bonds) do |bond|
  json.extract! bond, :id, :description, :dt_admission, :workload, :obs, :person_id, :role_id, :type_bond_id, :instituation_id, :situation_bond_id
  json.url bond_url(bond, format: :json)
end
