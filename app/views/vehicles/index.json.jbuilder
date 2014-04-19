json.array!(@vehicles) do |vehicle|
  json.extract! vehicle, :id, :vin, :year, :make, :model, :stock_number, :exterior_color, :interior_color
  json.url vehicle_url(vehicle, format: :json)
end
