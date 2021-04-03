class BudgetsController < ApplicationController
  def index
    @budgets = Budget.all
  end

  def new
    @budget = Budget.new
  end

  def create
    @budget = Budget.new(budget_params)
    if @budget.save
      redirect_to budgets_path
    else
      render budgets_new_path
    end

  end

  def show
  end

  def edit
  end

  def budget_params
    params.require(:budget).permit(:price,month,user_id)
  end

end
