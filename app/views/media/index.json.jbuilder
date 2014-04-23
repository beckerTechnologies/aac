json.array!(@media) do |medium|
  json.extract! medium, :id, :response_id, :label, :description, :data, :filename, :type
  json.url medium_url(medium, format: :json)
end
