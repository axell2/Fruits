require "application_system_test_case"

class FruitsTest < ApplicationSystemTestCase
  setup do
    @fruit = fruits(:one)
  end

  test "visiting the index" do
    visit fruits_url
    assert_selector "h1", text: "Fruits"
  end

  test "should create fruit" do
    visit fruits_url
    click_on "New fruit"

    fill_in "Color", with: @fruit.color
    fill_in "Name", with: @fruit.name
    fill_in "Origin", with: @fruit.origin
    fill_in "Price", with: @fruit.price
    fill_in "Season", with: @fruit.season
    fill_in "User", with: @fruit.user_id
    click_on "Create Fruit"

    assert_text "Fruit was successfully created"
    click_on "Back"
  end

  test "should update Fruit" do
    visit fruit_url(@fruit)
    click_on "Edit this fruit", match: :first

    fill_in "Color", with: @fruit.color
    fill_in "Name", with: @fruit.name
    fill_in "Origin", with: @fruit.origin
    fill_in "Price", with: @fruit.price
    fill_in "Season", with: @fruit.season
    fill_in "User", with: @fruit.user_id
    click_on "Update Fruit"

    assert_text "Fruit was successfully updated"
    click_on "Back"
  end

  test "should destroy Fruit" do
    visit fruit_url(@fruit)
    click_on "Destroy this fruit", match: :first

    assert_text "Fruit was successfully destroyed"
  end
end
