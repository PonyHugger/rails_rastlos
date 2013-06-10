require 'test_helper'

class ToursControllerTest < ActionController::TestCase
  setup do
    @tour = tours(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tours)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tour" do
    assert_difference('Tour.count') do
      post :create, tour: { tour_car: @tour.tour_car, tour_end_location: @tour.tour_end_location, tour_end_time: @tour.tour_end_time, tour_offer: @tour.tour_offer, tour_passenger_ids: @tour.tour_passenger_ids, tour_password: @tour.tour_password, tour_seats: @tour.tour_seats, tour_smoker: @tour.tour_smoker, tour_start_location_id: @tour.tour_start_location_id, tour_start_time: @tour.tour_start_time }
    end

    assert_redirected_to tour_path(assigns(:tour))
  end

  test "should show tour" do
    get :show, id: @tour
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tour
    assert_response :success
  end

  test "should update tour" do
    patch :update, id: @tour, tour: { tour_car: @tour.tour_car, tour_end_location: @tour.tour_end_location, tour_end_time: @tour.tour_end_time, tour_offer: @tour.tour_offer, tour_passenger_ids: @tour.tour_passenger_ids, tour_password: @tour.tour_password, tour_seats: @tour.tour_seats, tour_smoker: @tour.tour_smoker, tour_start_location_id: @tour.tour_start_location_id, tour_start_time: @tour.tour_start_time }
    assert_redirected_to tour_path(assigns(:tour))
  end

  test "should destroy tour" do
    assert_difference('Tour.count', -1) do
      delete :destroy, id: @tour
    end

    assert_redirected_to tours_path
  end
end
