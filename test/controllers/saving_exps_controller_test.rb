require 'test_helper'

class SavingExpsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @saving_exp = saving_exps(:one)
  end

  test "should get index" do
    get saving_exps_url
    assert_response :success
  end

  test "should get new" do
    get new_saving_exp_url
    assert_response :success
  end

  test "should create saving_exp" do
    assert_difference('SavingExp.count') do
      post saving_exps_url, params: { saving_exp: {  } }
    end

    assert_redirected_to saving_exp_url(SavingExp.last)
  end

  test "should show saving_exp" do
    get saving_exp_url(@saving_exp)
    assert_response :success
  end

  test "should get edit" do
    get edit_saving_exp_url(@saving_exp)
    assert_response :success
  end

  test "should update saving_exp" do
    patch saving_exp_url(@saving_exp), params: { saving_exp: {  } }
    assert_redirected_to saving_exp_url(@saving_exp)
  end

  test "should destroy saving_exp" do
    assert_difference('SavingExp.count', -1) do
      delete saving_exp_url(@saving_exp)
    end

    assert_redirected_to saving_exps_url
  end
end
