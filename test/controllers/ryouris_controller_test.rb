require "test_helper"

class RyourisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ryouri = ryouris(:one)
  end

  test "should get index" do
    get ryouris_url
    assert_response :success
  end

  test "should get new" do
    get new_ryouri_url
    assert_response :success
  end

  test "should create ryouri" do
    assert_difference('Ryouri.count') do
      post ryouris_url, params: { ryouri: { ingredient_id: @ryouri.ingredient_id, name: @ryouri.name } }
    end

    assert_redirected_to ryouri_url(Ryouri.last)
  end

  test "should show ryouri" do
    get ryouri_url(@ryouri)
    assert_response :success
  end

  test "should get edit" do
    get edit_ryouri_url(@ryouri)
    assert_response :success
  end

  test "should update ryouri" do
    patch ryouri_url(@ryouri), params: { ryouri: { ingredient_id: @ryouri.ingredient_id, name: @ryouri.name } }
    assert_redirected_to ryouri_url(@ryouri)
  end

  test "should destroy ryouri" do
    assert_difference('Ryouri.count', -1) do
      delete ryouri_url(@ryouri)
    end

    assert_redirected_to ryouris_url
  end
end
