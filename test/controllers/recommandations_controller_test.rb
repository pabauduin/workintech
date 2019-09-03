require 'test_helper'

class RecommandationsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get recommandations_new_url
    assert_response :success
  end

  test "should get create" do
    get recommandations_create_url
    assert_response :success
  end

end
