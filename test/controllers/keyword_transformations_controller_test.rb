require "test_helper"

class KeywordTransformationsControllerTest < ActionDispatch::IntegrationTest
    setup do
        @keyword_transformation = keyword_transformations(:one)
    end

    test "should get index" do
        get keyword_transformations_url
        assert_response :success
    end

    test "should get new" do
        get new_keyword_transformation_url
        assert_response :success
    end

    test "should create keyword_transformation" do
        assert_difference("KeywordTransformation.count") do
            post keyword_transformations_url, params: { keyword_transformation: { answer: @keyword_transformation.answer, keyword: @keyword_transformation.keyword, prompt: @keyword_transformation.prompt, question: @keyword_transformation.question } }
        end

        assert_redirected_to keyword_transformation_url(KeywordTransformation.last)
    end

    test "should show keyword_transformation" do
        get keyword_transformation_url(@keyword_transformation)
        assert_response :success
    end

    test "should get edit" do
        get edit_keyword_transformation_url(@keyword_transformation)
        assert_response :success
    end

    test "should update keyword_transformation" do
        patch keyword_transformation_url(@keyword_transformation), params: { keyword_transformation: { answer: @keyword_transformation.answer, keyword: @keyword_transformation.keyword, prompt: @keyword_transformation.prompt, question: @keyword_transformation.question } }
        assert_redirected_to keyword_transformation_url(@keyword_transformation)
    end

    test "should destroy keyword_transformation" do
        assert_difference("KeywordTransformation.count", -1) do
            delete keyword_transformation_url(@keyword_transformation)
        end

        assert_redirected_to keyword_transformations_url
    end
end
