require "test_helper"

class DefensesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @defense = defenses(:one)
  end

  test "should get index" do
    get defenses_url
    assert_response :success
  end

  test "should get new" do
    get new_defense_url
    assert_response :success
  end

  test "should create defense" do
    assert_difference("Defense.count") do
      post defenses_url, params: { defense: { content: @defense.content, townhall: @defense.townhall } }
    end

    assert_redirected_to defense_url(Defense.last)
  end

  test "should show defense" do
    get defense_url(@defense)
    assert_response :success
  end

  test "should get edit" do
    get edit_defense_url(@defense)
    assert_response :success
  end

  test "should update defense" do
    patch defense_url(@defense), params: { defense: { content: @defense.content, townhall: @defense.townhall } }
    assert_redirected_to defense_url(@defense)
  end

  test "should destroy defense" do
    assert_difference("Defense.count", -1) do
      delete defense_url(@defense)
    end

    assert_redirected_to defenses_url
  end
end
