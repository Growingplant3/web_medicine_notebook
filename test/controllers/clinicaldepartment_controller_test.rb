require 'test_helper'

class ClinicaldepartmentControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get clinicaldepartment_index_url
    assert_response :success
  end

  test "should get new" do
    get clinicaldepartment_new_url
    assert_response :success
  end

  test "should get show" do
    get clinicaldepartment_show_url
    assert_response :success
  end

  test "should get edit" do
    get clinicaldepartment_edit_url
    assert_response :success
  end

  test "should get create" do
    get clinicaldepartment_create_url
    assert_response :success
  end

end
