require "application_system_test_case"

class RyourisTest < ApplicationSystemTestCase
  setup do
    @ryouri = ryouris(:one)
  end

  test "visiting the index" do
    visit ryouris_url
    assert_selector "h1", text: "Ryouris"
  end

  test "creating a Ryouri" do
    visit ryouris_url
    click_on "New Ryouri"

    fill_in "Ingredient", with: @ryouri.ingredient_id
    fill_in "Name", with: @ryouri.name
    click_on "Create Ryouri"

    assert_text "Ryouri was successfully created"
    click_on "Back"
  end

  test "updating a Ryouri" do
    visit ryouris_url
    click_on "Edit", match: :first

    fill_in "Ingredient", with: @ryouri.ingredient_id
    fill_in "Name", with: @ryouri.name
    click_on "Update Ryouri"

    assert_text "Ryouri was successfully updated"
    click_on "Back"
  end

  test "destroying a Ryouri" do
    visit ryouris_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ryouri was successfully destroyed"
  end
end
