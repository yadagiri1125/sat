json.array!(@emp1s) do |emp1|
  json.extract! emp1, :id, :name1
  json.url emp1_url(emp1, format: :json)
end
