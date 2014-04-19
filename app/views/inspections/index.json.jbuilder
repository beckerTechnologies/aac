json.array!(@inspections) do |inspection|
  json.extract! inspection, :id, :deadler_id, :user_is, :vehicle_id
  json.url inspection_url(inspection, format: :json)
end
