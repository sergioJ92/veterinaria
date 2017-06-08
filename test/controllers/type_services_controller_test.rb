require 'test_helper'

class TypeServicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @type_service = type_services(:one)
  end

  test "should get index" do
    get type_services_url
    assert_response :success
  end

  test "should get new" do
    get new_type_service_url
    assert_response :success
  end

  test "should create type_service" do
    assert_difference('TypeService.count') do
      post type_services_url, params: { type_service: { name: @type_service.name } }
    end

    assert_redirected_to type_service_url(TypeService.last)
  end

  test "should show type_service" do
    get type_service_url(@type_service)
    assert_response :success
  end

  test "should get edit" do
    get edit_type_service_url(@type_service)
    assert_response :success
  end

  test "should update type_service" do
    patch type_service_url(@type_service), params: { type_service: { name: @type_service.name } }
    assert_redirected_to type_service_url(@type_service)
  end

  test "should destroy type_service" do
    assert_difference('TypeService.count', -1) do
      delete type_service_url(@type_service)
    end

    assert_redirected_to type_services_url
  end
end
