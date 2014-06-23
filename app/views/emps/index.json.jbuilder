json.array!(@emps) do |emp|
  json.extract! emp, :id, :name
  json.url emp_url(emp, format: :json)
end
