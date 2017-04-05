require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get my_posts" do
    get users_my_posts_url
    assert_response :success
  end

  test "should get my_friends" do
    get users_my_friends_url
    assert_response :success
  end

end
