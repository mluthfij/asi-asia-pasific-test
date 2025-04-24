require "test_helper"

class MyClientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @my_client = my_clients(:one)
  end

  test "should get index" do
    get my_clients_url
    assert_response :success
  end

  test "should get new" do
    get new_my_client_url
    assert_response :success
  end

  test "should create my_client" do
    assert_difference("MyClient.count") do
      post my_clients_url, params: { my_client: {  } }
    end

    assert_redirected_to my_client_url(MyClient.last)
  end

  test "should show my_client" do
    get my_client_url(@my_client)
    assert_response :success
  end

  test "should get edit" do
    get edit_my_client_url(@my_client)
    assert_response :success
  end

  test "should update my_client" do
    patch my_client_url(@my_client), params: { my_client: {  } }
    assert_redirected_to my_client_url(@my_client)
  end

  test "should destroy my_client" do
    assert_difference("MyClient.count", -1) do
      delete my_client_url(@my_client)
    end

    assert_redirected_to my_clients_url
  end
end
