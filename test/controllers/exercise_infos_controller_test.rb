require 'test_helper'

class ExerciseInfosControllerTest < ActionController::TestCase
  setup do
    @exercise_info = exercise_infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:exercise_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create exercise_info" do
    assert_difference('ExerciseInfo.count') do
      post :create, exercise_info: { calorie: @exercise_info.calorie, exercise: @exercise_info.exercise }
    end

    assert_redirected_to exercise_info_path(assigns(:exercise_info))
  end

  test "should show exercise_info" do
    get :show, id: @exercise_info
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @exercise_info
    assert_response :success
  end

  test "should update exercise_info" do
    patch :update, id: @exercise_info, exercise_info: { calorie: @exercise_info.calorie, exercise: @exercise_info.exercise }
    assert_redirected_to exercise_info_path(assigns(:exercise_info))
  end

  test "should destroy exercise_info" do
    assert_difference('ExerciseInfo.count', -1) do
      delete :destroy, id: @exercise_info
    end

    assert_redirected_to exercise_infos_path
  end
end
