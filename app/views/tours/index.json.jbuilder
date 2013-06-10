json.array!(@tours) do |tour|
  json.extract! tour, :tour_passenger_ids, :tour_start_location_id, :tour_end_location, :tour_start_time, :tour_end_time, :tour_seats, :tour_car, :tour_smoker, :tour_offer, :tour_password
  json.url tour_url(tour, format: :json)
end