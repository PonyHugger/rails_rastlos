class CreateTours < ActiveRecord::Migration
  def change
    create_table :tours do |t|
      t.string :tour_passenger_ids
      t.integer :tour_start_location_id
      t.integer :tour_end_location
      t.date :tour_start_time
      t.date :tour_end_time
      t.integer :tour_seats
      t.string :tour_car
      t.boolean :tour_smoker
      t.boolean :tour_offer
      t.string :tour_password

      t.timestamps
    end
  end
end
