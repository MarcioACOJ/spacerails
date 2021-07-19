require "application_system_test_case"

class AliensTest < ApplicationSystemTestCase
  setup do
    @alien = aliens(:one)
  end

  test "visiting the index" do
    visit aliens_url
    assert_selector "h1", text: "Aliens"
  end

  test "creating a Alien" do
    visit aliens_url
    click_on "New Alien"

    fill_in "Age", with: @alien.age
    fill_in "Name", with: @alien.name
    click_on "Create Alien"

    assert_text "Alien was successfully created"
    click_on "Back"
  end

  test "updating a Alien" do
    visit aliens_url
    click_on "Edit", match: :first

    fill_in "Age", with: @alien.age
    fill_in "Name", with: @alien.name
    click_on "Update Alien"

    assert_text "Alien was successfully updated"
    click_on "Back"
  end

  test "destroying a Alien" do
    visit aliens_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Alien was successfully destroyed"
  end
end
