json.array!(@registers) do |register|
  json.extract! register, :id, :first_name, :last_name, :email
  json.url register_url(register, format: :json)
end
