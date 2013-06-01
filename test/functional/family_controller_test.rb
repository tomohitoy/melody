require 'test_helper'

class FamilyControllerTest < ActionController::TestCase
  test "should get children" do
    get :children
    assert_response :success
  end

  test "should get parents" do
    get :parents
    assert_response :success
  end

end
