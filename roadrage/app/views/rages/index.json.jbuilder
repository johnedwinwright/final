json.array!(@rages) do |rage|
  json.extract! rage, :id, :plate_number, :vehicleid, :rage, :title
  json.url rage_url(rage, format: :json)
end
