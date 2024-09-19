require "application_system_test_case"

class DefensesTest < ApplicationSystemTestCase
  setup do
    @defense = defenses(:one)
  end

  test "visiting the index" do
    visit defenses_url
    assert_selector "h1", text: "Defenses"
  end

  test "should create defense" do
    visit defenses_url
    click_on "New defense"

    fill_in "Content", with: @defense.content
    fill_in "Townhall", with: @defense.townhall
    click_on "Create Defense"

    assert_text "Defense was successfully created"
    click_on "Back"
  end

  test "should update Defense" do
    visit defense_url(@defense)
    click_on "Edit this defense", match: :first

    fill_in "Content", with: @defense.content
    fill_in "Townhall", with: @defense.townhall
    click_on "Update Defense"

    assert_text "Defense was successfully updated"
    click_on "Back"
  end

  test "should destroy Defense" do
    visit defense_url(@defense)
    click_on "Destroy this defense", match: :first

    assert_text "Defense was successfully destroyed"
  end
end
