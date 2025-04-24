require "application_system_test_case"

class MyClientsTest < ApplicationSystemTestCase
  setup do
    @my_client = my_clients(:one)
  end

  test "visiting the index" do
    visit my_clients_url
    assert_selector "h1", text: "My clients"
  end

  test "should create my client" do
    visit my_clients_url
    click_on "New my client"

    click_on "Create My client"

    assert_text "My client was successfully created"
    click_on "Back"
  end

  test "should update My client" do
    visit my_client_url(@my_client)
    click_on "Edit this my client", match: :first

    click_on "Update My client"

    assert_text "My client was successfully updated"
    click_on "Back"
  end

  test "should destroy My client" do
    visit my_client_url(@my_client)
    click_on "Destroy this my client", match: :first

    assert_text "My client was successfully destroyed"
  end
end
