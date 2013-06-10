# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20130610144028) do

  create_table "bookings", force: true do |t|
    t.date     "booking_time"
    t.string   "booking_passenger_ids"
    t.integer  "booking_tour_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cities", force: true do |t|
    t.string   "city_name"
    t.float    "city_lon"
    t.float    "city_lat"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tours", force: true do |t|
    t.string   "tour_passenger_ids"
    t.integer  "tour_start_location_id"
    t.integer  "tour_end_location"
    t.date     "tour_start_time"
    t.date     "tour_end_time"
    t.integer  "tour_seats"
    t.string   "tour_car"
    t.boolean  "tour_smoker"
    t.boolean  "tour_offer"
    t.string   "tour_password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "user_name"
    t.string   "user_surname"
    t.string   "user_adress_city"
    t.integer  "user_adress_zip"
    t.string   "user_adress_street"
    t.integer  "user_adress_number"
    t.string   "user_mail"
    t.string   "user_tel"
    t.string   "user_password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
