json.array!(@media) do |medium|
  json.extract! medium, :id, :vehicle_id, :name, :type
  json.url medium_url(medium, format: :json)
end
