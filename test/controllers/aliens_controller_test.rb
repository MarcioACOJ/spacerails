require "test_helper"

class AliensControllerTest < ActionDispatch::IntegrationTest
  setup do
    @alien = aliens(:one)
  end

  test "should get index" do
    get aliens_url
    assert_response :success
  end

  test "should get new" do
    get new_alien_url
    assert_response :success
  end

  test "should create alien" do
    assert_difference('Alien.count') do
      post aliens_url, params: { alien: { age: @alien.age, name: @alien.name } }
    end

    assert_redirected_to alien_url(Alien.last)
  end

  test "should show alien" do
    get alien_url(@alien)
    assert_response :success
  end

  test "should get edit" do
    get edit_alien_url(@alien)
    assert_response :success
  end

  test "should update alien" do
    patch alien_url(@alien), params: { alien: { age: @alien.age, name: @alien.name } }
    assert_redirected_to alien_url(@alien)
  end

  test "should destroy alien" do
    assert_difference('Alien.count', -1) do
      delete alien_url(@alien)
    end

    assert_redirected_to aliens_url
  end
end
