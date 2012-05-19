require 'test_helper'

class SignUpTest < ActionDispatch::IntegrationTest
  def sign_up email
    visit new_user_registration_url

    fill_in "Email", with: email
    fill_in "Password", with: "password"
    fill_in "Password confirmation", with: "password"
    click_button "Sign up"
  end

  test "Signups require email and password" do
    sign_up "john@doe.com"

    assert User.where(email:"john@doe.com").count > 0
  end

  test "new sign ups get a confirmation email" do
    sign_up "mike@doe.com"

    last_email = ActionMailer::Base.deliveries.last
    assert_equal "mike@doe.com", last_email['to'].to_s
  end
end
