json.array!(@responses) do |response|
  json.extract! response, :id, :inspection_id, :section_id, :check, :details, :media_data, :media_filename, :media_type
  json.url response_url(response, format: :json)
end
