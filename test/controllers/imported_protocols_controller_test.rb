require 'test_helper'

class ImportedProtocolsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @imported_protocol = imported_protocols(:one)
  end

  test "should get index" do
    get imported_protocols_url
    assert_response :success
  end

  test "should get new" do
    get new_imported_protocol_url
    assert_response :success
  end

  test "should create imported_protocol" do
    assert_difference('ImportedProtocol.count') do
      post imported_protocols_url, params: { imported_protocol: {  } }
    end

    assert_redirected_to imported_protocol_url(ImportedProtocol.last)
  end

  test "should show imported_protocol" do
    get imported_protocol_url(@imported_protocol)
    assert_response :success
  end

  test "should get edit" do
    get edit_imported_protocol_url(@imported_protocol)
    assert_response :success
  end

  test "should update imported_protocol" do
    patch imported_protocol_url(@imported_protocol), params: { imported_protocol: {  } }
    assert_redirected_to imported_protocol_url(@imported_protocol)
  end

  test "should destroy imported_protocol" do
    assert_difference('ImportedProtocol.count', -1) do
      delete imported_protocol_url(@imported_protocol)
    end

    assert_redirected_to imported_protocols_url
  end
end
