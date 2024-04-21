require "test_helper"

class PrayerGiversControllerTest < ActionDispatch::IntegrationTest
  setup do
    @prayer_giver = prayer_givers(:one)
  end

  test "should get index" do
    get prayer_givers_url
    assert_response :success
  end

  test "should get new" do
    get new_prayer_giver_url
    assert_response :success
  end

  test "should create prayer_giver" do
    assert_difference("PrayerGiver.count") do
      post prayer_givers_url, params: { prayer_giver: { city: @prayer_giver.city, email: @prayer_giver.email, end_date: @prayer_giver.end_date, first_name: @prayer_giver.first_name } }
    end

    assert_redirected_to prayer_giver_url(PrayerGiver.last)
  end

  test "should show prayer_giver" do
    get prayer_giver_url(@prayer_giver)
    assert_response :success
  end

  test "should get edit" do
    get edit_prayer_giver_url(@prayer_giver)
    assert_response :success
  end

  test "should update prayer_giver" do
    patch prayer_giver_url(@prayer_giver), params: { prayer_giver: { city: @prayer_giver.city, email: @prayer_giver.email, end_date: @prayer_giver.end_date, first_name: @prayer_giver.first_name } }
    assert_redirected_to prayer_giver_url(@prayer_giver)
  end

  test "should destroy prayer_giver" do
    assert_difference("PrayerGiver.count", -1) do
      delete prayer_giver_url(@prayer_giver)
    end

    assert_redirected_to prayer_givers_url
  end
end
