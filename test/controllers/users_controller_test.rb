require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
    setup do
        @user = users(:one)
    end

    test "should get profile" do
        get user_url(@user)
        assert_response :success
    end
end
