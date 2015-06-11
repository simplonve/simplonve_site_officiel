require 'test_helper'

class CalendrierControllerTest < ActionController::TestCase
  test "should get reservation" do
    get :reservation
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end
end
