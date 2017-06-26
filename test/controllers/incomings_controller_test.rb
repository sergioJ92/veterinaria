require 'test_helper'

class IncomingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @incoming = incomings(:one)
  end

  test "should get index" do
    get incomings_url
    assert_response :success
  end

  test "should get new" do
    get new_incoming_url
    assert_response :success
  end

  test "should create incoming" do
    assert_difference('Incoming.count') do
      post incomings_url, params: { incoming: { ammount: @incoming.ammount, date: @incoming.date, details: @incoming.details } }
    end

    assert_redirected_to incoming_url(Incoming.last)
  end

  test "should show incoming" do
    get incoming_url(@incoming)
    assert_response :success
  end

  test "should get edit" do
    get edit_incoming_url(@incoming)
    assert_response :success
  end

  test "should update incoming" do
    patch incoming_url(@incoming), params: { incoming: { ammount: @incoming.ammount, date: @incoming.date, details: @incoming.details } }
    assert_redirected_to incoming_url(@incoming)
  end

  test "should destroy incoming" do
    assert_difference('Incoming.count', -1) do
      delete incoming_url(@incoming)
    end

    assert_redirected_to incomings_url
  end
end
