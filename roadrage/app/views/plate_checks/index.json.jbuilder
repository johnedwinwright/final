json.array!(@plate_checks) do |plate_check|
  json.extract! plate_check, :id, :name
  json.url plate_check_url(plate_check, format: :json)
end
