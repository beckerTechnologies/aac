json.array!(@dealers) do |dealer|
  json.extract! dealer, :id, :user_id, :name, :license_number, :address, :city, :state, :zip
  json.url dealer_url(dealer, format: :json)
end
