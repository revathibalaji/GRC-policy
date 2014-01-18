require 'test_helper'

class PoliciesControllerTest < ActionController::TestCase
  setup do
    @policy = policies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:policies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create policy" do
    assert_difference('Policy.count') do
      post :create, policy: { c_name: @policy.c_name, c_ref: @policy.c_ref, objectives: @policy.objectives, p_name: @policy.p_name, p_ref: @policy.p_ref, scope: @policy.scope }
    end

    assert_redirected_to policy_path(assigns(:policy))
  end

  test "should show policy" do
    get :show, id: @policy
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @policy
    assert_response :success
  end

  test "should update policy" do
    patch :update, id: @policy, policy: { c_name: @policy.c_name, c_ref: @policy.c_ref, objectives: @policy.objectives, p_name: @policy.p_name, p_ref: @policy.p_ref, scope: @policy.scope }
    assert_redirected_to policy_path(assigns(:policy))
  end

  test "should destroy policy" do
    assert_difference('Policy.count', -1) do
      delete :destroy, id: @policy
    end

    assert_redirected_to policies_path
  end
end
