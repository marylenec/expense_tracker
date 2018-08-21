require 'test_helper'

class BudgetExpenseControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get budget_expense_index_url
    assert_response :success
  end

  test "should get show" do
    get budget_expense_show_url
    assert_response :success
  end

  test "should get new" do
    get budget_expense_new_url
    assert_response :success
  end

  test "should get edit" do
    get budget_expense_edit_url
    assert_response :success
  end

end
