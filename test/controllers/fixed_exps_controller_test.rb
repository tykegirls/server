require 'test_helper'

class FixedExpsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fixed_exp = fixed_exps(:one)
  end

  test "should get index" do
    get fixed_exps_url
    assert_response :success
  end

  test "should get new" do
    get new_fixed_exp_url
    assert_response :success
  end

  test "should create fixed_exp" do
    assert_difference('FixedExp.count') do
      post fixed_exps_url, params: { fixed_exp: {  } }
    end

    assert_redirected_to fixed_exp_url(FixedExp.last)
  end

  test "should show fixed_exp" do
    get fixed_exp_url(@fixed_exp)
    assert_response :success
  end

  test "should get edit" do
    get edit_fixed_exp_url(@fixed_exp)
    assert_response :success
  end

  test "should update fixed_exp" do
    patch fixed_exp_url(@fixed_exp), params: { fixed_exp: {  } }
    assert_redirected_to fixed_exp_url(@fixed_exp)
  end

  test "should destroy fixed_exp" do
    assert_difference('FixedExp.count', -1) do
      delete fixed_exp_url(@fixed_exp)
    end

    assert_redirected_to fixed_exps_url
  end
end
