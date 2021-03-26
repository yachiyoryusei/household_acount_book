class IncomesAndExpensesController < ApplicationController
  def new
    @income = Income.new
    @exprese = Exprese.new
  end

  def show
  end

  def index
  end

  def edit
  end
end
