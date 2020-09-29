require "application_system_test_case"

class UsersTest < ApplicationSystemTestCase
  include Devise::Test::IntegrationHelpers
  test "a user can log in" do
    visit new_user_session_path
    fill_in "user_email", with: "systemtest@test.com"
    fill_in "user_password", with: "test123"
    click_on "Log in"
    assert_link "Logout", href: destroy_user_session_path
  end
end
