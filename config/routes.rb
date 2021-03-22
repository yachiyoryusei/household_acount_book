Rails.application.routes.draw do
  get 'budgets/new' 
  get 'budgets/show'
  get 'budgets/index'
  get 'budgets/edit'

  get 'incomes_and_expenses/new' => 'incomes_and_expenses#new'
  get 'incomes_and_expenses/show'
  get 'incomes_and_expenses/index'
  get 'incomes_and_expenses/edit'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
