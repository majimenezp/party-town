require 'test_helper'

class EventsTest < ActionDispatch::IntegrationTest
  test "index json includes name, lat, lng and link to event" do
    get "/events.json"

    assert_response :success
  end

  test "creation of an event" do
    visit new_event_path

    fill_in "Title", with: "SHDH Cd del Carmen"
    fill_in "Hashtag", with: "shdhcme"
    fill_in "Address line 1", with: "Calle 31 Num. 54"
    fill_in "Address line 2", with: "Colonia Centro"
    fill_in "City", with: "Ciudad del Carmen"

    click_button "Save"
  end
end
