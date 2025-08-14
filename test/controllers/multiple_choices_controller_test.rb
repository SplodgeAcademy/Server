require "test_helper"

class MultipleChoicesControllerTest < ActionDispatch::IntegrationTest
    setup do
        @multiple_choice = multiple_choices(:one)
    end

    test "should get index" do
        get multiple_choices_url
        assert_response :success
    end

    test "should get new" do
        get new_multiple_choice_url
        assert_response :success
    end

    test "should create multiple_choice" do
        assert_difference("MultipleChoice.count") do
            post multiple_choices_url, params: { multiple_choice: { a: @multiple_choice.a, answer: @multiple_choice.answer, b: @multiple_choice.b, c: @multiple_choice.c, d: @multiple_choice.d, question: @multiple_choice.question } }
        end

        assert_redirected_to multiple_choice_url(MultipleChoice.last)
    end

    test "should show multiple_choice" do
        get multiple_choice_url(@multiple_choice)
        assert_response :success
    end

    test "should get edit" do
        get edit_multiple_choice_url(@multiple_choice)
        assert_response :success
    end

    test "should update multiple_choice" do
        patch multiple_choice_url(@multiple_choice), params: { multiple_choice: { a: @multiple_choice.a, answer: @multiple_choice.answer, b: @multiple_choice.b, c: @multiple_choice.c, d: @multiple_choice.d, question: @multiple_choice.question } }
        assert_redirected_to multiple_choice_url(@multiple_choice)
    end

    test "should destroy multiple_choice" do
        assert_difference("MultipleChoice.count", -1) do
            delete multiple_choice_url(@multiple_choice)
        end

        assert_redirected_to multiple_choices_url
    end
end
