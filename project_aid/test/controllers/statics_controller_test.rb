require 'test_helper'

class StaticsControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get statics_home_url
    assert_response :success
  end

  test "should get about" do
    get statics_about_url
    assert_response :success
  end

  test "should get terms" do
    get statics_terms_url
    assert_response :success
  end

  test "should get contact" do
    get statics_contact_url
    assert_response :success
  end

end
