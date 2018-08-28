require "application_system_test_case"

class Profile2sTest < ApplicationSystemTestCase
  setup do
    @profile2 = profile2s(:one)
  end

  test "visiting the index" do
    visit profile2s_url
    assert_selector "h1", text: "Profile2s"
  end

  test "creating a Profile2" do
    visit profile2s_url
    click_on "New Profile2"

    click_on "Create Profile2"

    assert_text "Profile2 was successfully created"
    click_on "Back"
  end

  test "updating a Profile2" do
    visit profile2s_url
    click_on "Edit", match: :first

    click_on "Update Profile2"

    assert_text "Profile2 was successfully updated"
    click_on "Back"
  end

  test "destroying a Profile2" do
    visit profile2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Profile2 was successfully destroyed"
  end
end
