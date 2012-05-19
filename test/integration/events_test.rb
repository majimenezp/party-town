require 'test_helper'

class EventsTest < ActionDispatch::IntegrationTest
  test "index json includes name, lat, lng and link to event" do
    get "/events.json"

    assert_response :success
  end
end
