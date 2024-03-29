require 'test_helper'

class MilestonesControllerTest < ActionController::TestCase
  setup do
    @milestone = milestones(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:milestones)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create milestone" do
    assert_difference('Milestone.count') do
      post :create, milestone: { address: @milestone.address, checkpoint_id: @milestone.checkpoint_id, image: @milestone.image, latitude: @milestone.latitude, longitude: @milestone.longitude, mission_id: @milestone.mission_id, user_id: @milestone.user_id }
    end

    assert_redirected_to milestone_path(assigns(:milestone))
  end

  test "should show milestone" do
    get :show, id: @milestone
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @milestone
    assert_response :success
  end

  test "should update milestone" do
    put :update, id: @milestone, milestone: { address: @milestone.address, checkpoint_id: @milestone.checkpoint_id, image: @milestone.image, latitude: @milestone.latitude, longitude: @milestone.longitude, mission_id: @milestone.mission_id, user_id: @milestone.user_id }
    assert_redirected_to milestone_path(assigns(:milestone))
  end

  test "should destroy milestone" do
    assert_difference('Milestone.count', -1) do
      delete :destroy, id: @milestone
    end

    assert_redirected_to milestones_path
  end
end
