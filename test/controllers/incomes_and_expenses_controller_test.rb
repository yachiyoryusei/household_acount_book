require "test_helper"

class IncomesAndExpensesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get incomes_and_expenses_new_url
    assert_response :success
  end

  test "should get show" do
    get incomes_and_expenses_show_url
    assert_response :success
  end

  test "should get index" do
    get incomes_and_expenses_index_url
    assert_response :success
  end

  test "should get edit" do
    get incomes_and_expenses_edit_url
    assert_response :success
  end
end
