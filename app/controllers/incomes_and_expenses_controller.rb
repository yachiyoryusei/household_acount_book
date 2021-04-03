class IncomesAndExpensesController < ApplicationController
  
  def index
    @income = Income.all
    @expense = Expense.all
  end

  def new
    @income = Income.new
    @expense = Expense.new
  end

  def show
  end

  def create
    @income = Income.new(income_params)

    respond_to do |format|
      if @income.save
        format.html {redirect_to @income, notice:'Income was successfully created.'}
        format.json {render :show, status: :created, location: @income}
      else
        format.html {render :new}
        format.json { render json: @income.errors,status: :unprocessable_entity }
      end
    end


    @expense = Expense.new(expense_params)
    respond_to do |format|
      if @expense.save
        format.html {redirect_to @expense, notice:'Income was successfully created.'}
        format.json {render :show, status: :created, location: @expense}
      else
        format.html {render :new}
        format.json { render json: @expense.errors,status: :unprocessable_entity }
      end
    end

  end

  def edit
  end

  def income_params
    p '*************'
    p params
    params.require(:Income).permit(:price, :expense_date, :user_id)
  end
  
  def expense_params
    p '*************'
    p params
    params.require(:Expense).permit(:price, :expense_date, :user_id)
  end

  
end
