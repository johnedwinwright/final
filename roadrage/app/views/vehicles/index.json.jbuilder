json.array!(@vehicles) do |vehicle|
  json.extract! vehicle, :id, :plate_number, :make, :model, :color, :year, :description
  json.url vehicle_url(vehicle, format: :json)
end
