json.array!(@bookings) do |booking|
  json.extract! booking, :booking_time, :booking_passenger_ids, :booking_tour_id
  json.url booking_url(booking, format: :json)
end