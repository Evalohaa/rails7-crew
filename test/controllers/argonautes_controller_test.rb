require "test_helper"

class ArgonautesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get argonautes_index_url
    assert_response :success
  end

  test "should get new" do
    get argonautes_new_url
    assert_response :success
  end

  test "should get create" do
    get argonautes_create_url
    assert_response :success
  end
end
