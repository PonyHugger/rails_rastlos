json.array!(@cities) do |city|
  json.extract! city, :city_name, :city_lon, :city_lat
  json.url city_url(city, format: :json)
end