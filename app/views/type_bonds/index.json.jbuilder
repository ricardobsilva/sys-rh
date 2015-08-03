json.array!(@type_bonds) do |type_bond|
  json.extract! type_bond, :id, :name, :abbreviation
  json.url type_bond_url(type_bond, format: :json)
end
