require "application_system_test_case"

class BookingHistoriesTest < ApplicationSystemTestCase
  setup do
    @booking_history = booking_histories(:one)
  end

  test "visiting the index" do
    visit booking_histories_url
    assert_selector "h1", text: "Booking histories"
  end

  test "should create booking history" do
    visit booking_histories_url
    click_on "New booking history"

    fill_in "Checkin", with: @booking_history.checkIn
    fill_in "Checkout", with: @booking_history.checkOut
    fill_in "Description", with: @booking_history.description
    fill_in "Room", with: @booking_history.room_id
    fill_in "User", with: @booking_history.user_id
    click_on "Create Booking history"

    assert_text "Booking history was successfully created"
    click_on "Back"
  end

  test "should update Booking history" do
    visit booking_history_url(@booking_history)
    click_on "Edit this booking history", match: :first

    fill_in "Checkin", with: @booking_history.checkIn
    fill_in "Checkout", with: @booking_history.checkOut
    fill_in "Description", with: @booking_history.description
    fill_in "Room", with: @booking_history.room_id
    fill_in "User", with: @booking_history.user_id
    click_on "Update Booking history"

    assert_text "Booking history was successfully updated"
    click_on "Back"
  end

  test "should destroy Booking history" do
    visit booking_history_url(@booking_history)
    click_on "Destroy this booking history", match: :first

    assert_text "Booking history was successfully destroyed"
  end
end
