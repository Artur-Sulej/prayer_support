require "application_system_test_case"

class PrayerGiversTest < ApplicationSystemTestCase
  setup do
    @prayer_giver = prayer_givers(:one)
  end

  test "visiting the index" do
    visit prayer_givers_url
    assert_selector "h1", text: "Prayer givers"
  end

  test "should create prayer giver" do
    visit prayer_givers_url
    click_on "New prayer giver"

    fill_in "City", with: @prayer_giver.city
    fill_in "Email", with: @prayer_giver.email
    fill_in "End date", with: @prayer_giver.end_date
    fill_in "First name", with: @prayer_giver.first_name
    click_on "Create Prayer giver"

    assert_text "Prayer giver was successfully created"
    click_on "Back"
  end

  test "should update Prayer giver" do
    visit prayer_giver_url(@prayer_giver)
    click_on "Edit this prayer giver", match: :first

    fill_in "City", with: @prayer_giver.city
    fill_in "Email", with: @prayer_giver.email
    fill_in "End date", with: @prayer_giver.end_date
    fill_in "First name", with: @prayer_giver.first_name
    click_on "Update Prayer giver"

    assert_text "Prayer giver was successfully updated"
    click_on "Back"
  end

  test "should destroy Prayer giver" do
    visit prayer_giver_url(@prayer_giver)
    click_on "Destroy this prayer giver", match: :first

    assert_text "Prayer giver was successfully destroyed"
  end
end
