require 'test_helper'

class HomepageTest < ActionDispatch::IntegrationTest
  test "a button to create an event is present" do
    get root_url

    assert :success
    assert_select "a.new_event", "Register your event"
  end
end
