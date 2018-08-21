require 'test_helper'

class ActualExpenseControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get actual_expense_index_url
    assert_response :success
  end

  test "should get show" do
    get actual_expense_show_url
    assert_response :success
  end

  test "should get new" do
    get actual_expense_new_url
    assert_response :success
  end

  test "should get edit" do
    get actual_expense_edit_url
    assert_response :success
  end

end
