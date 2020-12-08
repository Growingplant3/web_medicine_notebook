require 'test_helper'

class TelphonesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @telphone = telphones(:one)
  end

  test "should get index" do
    get telphones_url
    assert_response :success
  end

  test "should get new" do
    get new_telphone_url
    assert_response :success
  end

  test "should create telphone" do
    assert_difference('Telphone.count') do
      post telphones_url, params: { telphone: { num1: @telphone.num1, num2: @telphone.num2, num3: @telphone.num3 } }
    end

    assert_redirected_to telphone_url(Telphone.last)
  end

  test "should show telphone" do
    get telphone_url(@telphone)
    assert_response :success
  end

  test "should get edit" do
    get edit_telphone_url(@telphone)
    assert_response :success
  end

  test "should update telphone" do
    patch telphone_url(@telphone), params: { telphone: { num1: @telphone.num1, num2: @telphone.num2, num3: @telphone.num3 } }
    assert_redirected_to telphone_url(@telphone)
  end

  test "should destroy telphone" do
    assert_difference('Telphone.count', -1) do
      delete telphone_url(@telphone)
    end

    assert_redirected_to telphones_url
  end
end
