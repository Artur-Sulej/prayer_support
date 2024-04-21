require "application_system_test_case"

class PrayerReceiversTest < ApplicationSystemTestCase
  setup do
    @prayer_receiver = prayer_receivers(:one)
  end

  test "visiting the index" do
    visit prayer_receivers_url
    assert_selector "h1", text: "Prayer receivers"
  end

  test "should create prayer receiver" do
    visit prayer_receivers_url
    click_on "New prayer receiver"

    fill_in "City", with: @prayer_receiver.city
    fill_in "Email", with: @prayer_receiver.email
    fill_in "End date", with: @prayer_receiver.end_date
    fill_in "First name", with: @prayer_receiver.first_name
    click_on "Create Prayer receiver"

    assert_text "Prayer receiver was successfully created"
    click_on "Back"
  end

  test "should update Prayer receiver" do
    visit prayer_receiver_url(@prayer_receiver)
    click_on "Edit this prayer receiver", match: :first

    fill_in "City", with: @prayer_receiver.city
    fill_in "Email", with: @prayer_receiver.email
    fill_in "End date", with: @prayer_receiver.end_date
    fill_in "First name", with: @prayer_receiver.first_name
    click_on "Update Prayer receiver"

    assert_text "Prayer receiver was successfully updated"
    click_on "Back"
  end

  test "should destroy Prayer receiver" do
    visit prayer_receiver_url(@prayer_receiver)
    click_on "Destroy this prayer receiver", match: :first

    assert_text "Prayer receiver was successfully destroyed"
  end
end
