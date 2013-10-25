require 'test_helper'

class SequenceControllerControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end
  test "response should differ" do
    get :index
    response_one = response.body
    assert_response :success

    get :index
    response_two = response.body
    assert_response :success
    assert (not response_two.eql? response_one)
  end
end
