json.array!(@users) do |user|
  json.extract! user, :id, :role_id, :name, :address, :city, :state, :zip-code, :phone_number, :admin
  json.url user_url(user, format: :json)
end
