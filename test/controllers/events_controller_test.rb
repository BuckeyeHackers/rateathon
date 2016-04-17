require 'test_helper'

class EventsControllerTest < ActionController::TestCase
  test "can get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:events)
  end
end
