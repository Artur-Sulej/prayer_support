require "test_helper"

class PrayerReceiversControllerTest < ActionDispatch::IntegrationTest
  setup do
    @prayer_receiver = prayer_receivers(:one)
  end

  test "should get index" do
    get prayer_receivers_url
    assert_response :success
  end

  test "should get new" do
    get new_prayer_receiver_url
    assert_response :success
  end

  test "should create prayer_receiver" do
    assert_difference("PrayerReceiver.count") do
      post prayer_receivers_url, params: { prayer_receiver: { city: @prayer_receiver.city, email: @prayer_receiver.email, end_date: @prayer_receiver.end_date, first_name: @prayer_receiver.first_name } }
    end

    assert_redirected_to prayer_receiver_url(PrayerReceiver.last)
  end

  test "should show prayer_receiver" do
    get prayer_receiver_url(@prayer_receiver)
    assert_response :success
  end

  test "should get edit" do
    get edit_prayer_receiver_url(@prayer_receiver)
    assert_response :success
  end

  test "should update prayer_receiver" do
    patch prayer_receiver_url(@prayer_receiver), params: { prayer_receiver: { city: @prayer_receiver.city, email: @prayer_receiver.email, end_date: @prayer_receiver.end_date, first_name: @prayer_receiver.first_name } }
    assert_redirected_to prayer_receiver_url(@prayer_receiver)
  end

  test "should destroy prayer_receiver" do
    assert_difference("PrayerReceiver.count", -1) do
      delete prayer_receiver_url(@prayer_receiver)
    end

    assert_redirected_to prayer_receivers_url
  end
end
