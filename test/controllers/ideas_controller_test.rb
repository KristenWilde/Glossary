require 'test_helper'

class IdeasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @idea1 = ideas(:one)
    @idea2 = ideas(:two)
  end

  test "should get index" do
    get ideas_url
    assert_response :success
  end

  test "should get new" do
    get new_idea_url
    assert_response :success
  end

  test "should create idea" do
    assert_difference('Idea.count') do
      post ideas_url, params: { idea: { description: @idea1.description, name: @idea1.name } }
    end

    assert_redirected_to idea_url(Idea.last)
  end

  test "should show idea" do
    # skip
    get idea_url(@idea1)
    assert_response :success
  end

  test "should get edit" do
    # skip
    get edit_idea_url(@idea1)
    assert_response :success
  end

  test "should update idea" do
    # skip
    patch idea_url(@idea1), params: { idea: { description: @idea1.description, name: @idea1.name } }
    assert_redirected_to idea_url(@idea1)
  end

  test "should destroy idea" do
    # skip
    assert_difference('Idea.count', -1) do
      delete idea_url(@idea1)
    end

    assert_redirected_to ideas_url
  end
end
