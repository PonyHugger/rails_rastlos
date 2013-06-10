class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.date :booking_time
      t.string :booking_passenger_ids
      t.integer :booking_tour_id

      t.timestamps
    end
  end
end
