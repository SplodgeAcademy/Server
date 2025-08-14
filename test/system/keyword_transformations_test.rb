require "application_system_test_case"

class KeywordTransformationsTest < ApplicationSystemTestCase
  setup do
    @keyword_transformation = keyword_transformations(:one)
  end

  test "visiting the index" do
    visit keyword_transformations_url
    assert_selector "h1", text: "Keyword transformations"
  end

  test "should create keyword transformation" do
    visit keyword_transformations_url
    click_on "New keyword transformation"

    fill_in "Answer", with: @keyword_transformation.answer
    fill_in "Keyword", with: @keyword_transformation.keyword
    fill_in "Prompt", with: @keyword_transformation.prompt
    fill_in "Question", with: @keyword_transformation.question
    click_on "Create Keyword transformation"

    assert_text "Keyword transformation was successfully created"
    click_on "Back"
  end

  test "should update Keyword transformation" do
    visit keyword_transformation_url(@keyword_transformation)
    click_on "Edit this keyword transformation", match: :first

    fill_in "Answer", with: @keyword_transformation.answer
    fill_in "Keyword", with: @keyword_transformation.keyword
    fill_in "Prompt", with: @keyword_transformation.prompt
    fill_in "Question", with: @keyword_transformation.question
    click_on "Update Keyword transformation"

    assert_text "Keyword transformation was successfully updated"
    click_on "Back"
  end

  test "should destroy Keyword transformation" do
    visit keyword_transformation_url(@keyword_transformation)
    click_on "Destroy this keyword transformation", match: :first

    assert_text "Keyword transformation was successfully destroyed"
  end
end
