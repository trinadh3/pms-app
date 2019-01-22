require 'test_helper'

class OrganizationControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get organization_index_url
    assert_response :success
  end

  test "should get new" do
    get organization_new_url
    assert_response :success
  end

  test "should get edit" do
    get organization_edit_url
    assert_response :success
  end

  test "should get delete" do
    get organization_delete_url
    assert_response :success
  end

end
