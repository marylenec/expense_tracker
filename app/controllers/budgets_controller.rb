class BudgetsController < ApplicationController
  before_action :select_budget, only: [:show, :edit, :update, :destroy]

  def index

     if params[:search]
      @budgets = Budget.all.select { |budget| budget.category.name.include?(params[:search].downcase)}
      else
      @budgets = Budget.all
      end



   #  if params[:search]
   #   @budgets = Budget.joins(:category).where('categories.name LIKE ?', '%#{params[:search]}%')
   #   byebug
   # else
   #   @budgets = Budget.all
   # end


    @sum = @budgets.sum do |budget|
      budget.amount
    end
    @highest = @budgets.max_by { |budget| budget.amount }
    @highest_sort = @budgets.sort.reverse { |budget| budget.amount }
    @sort = @budgets.sort_by { |budget| budget.category.name }
  end

  def new
    @budget = Budget.new
  end

  def create
    # @budget = Budget.find(params[:id])
    # byebug
    @budget = Budget.new(params_budget)
    @budget.user = User.all.first
    @budget.save
    redirect_to budgets_path
  end

  def edit
  end

  def update
    @budget.update(params_budget)
    redirect_to budget_path(@budget)
  end

  def destroy
    @budget.destroy
    redirect_to budgets_path
  end

  private

  def params_budget
    params.require(:budget).permit(:amount, :user_id, :category_name, :period_id )
  end

  def select_budget
    @budget = Budget.find(params[:id])
  end

end
