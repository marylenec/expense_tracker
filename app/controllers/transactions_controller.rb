require "byebug"

class TransactionsController < ApplicationController
  before_action :select_transaction, only: [:show, :edit, :update, :destroy]

  def index
    # render welcome:static page
    @transactions = Transaction.all
  end

  def show
  end

  def new
    @transaction = Transaction.new
  end

  def create
    params_transaction
    @budget = BudgetExpense.create(category: params[:budget_expense_category], amount: params[:budget_expense_amount])
    @actual = ActualExpense.create(line_item: params[:actual_expense_line_item], amount: params[:actual_expense_amount])
    @transaction = Transaction.new(budget_expenses: @budget, actual_expenses: @actual, params[:user_id,:month, :year, :day])
    @transaction.save
    redirect_to transaction_path(@transaction)
  end

  def edit
  end

  def update
    @transaction.update(params_transaction)
    redirect_to transaction_path(@transaction)
  end

  def destroy
    @transaction.destroy
    redirect_to transactions_path
  end

  private

  def params_transaction
    params.require(:transaction).permit(:user_id, :actual_expense_line_item, :actual_expense_amount, :budget_expense_category, :budget_expense_amount, :month, :year, :day)
  end

  def select_transaction
    @transaction = Transaction.find(params[:id])
  end

end
