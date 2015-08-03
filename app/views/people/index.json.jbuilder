json.array!(@people) do |person|
  json.extract! person, :id, :name, :gender, :rg, :cpf, :birth_date, :cel, :tel1, :tel2, :district_id, :user_id
  json.url person_url(person, format: :json)
end
