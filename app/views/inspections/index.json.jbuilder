json.array!(@inspections) do |inspection|
  json.extract! inspection, :id, :dealer_id, :user_id, :vehicle_id
  json.url inspection_url(inspection, format: :json)
end
