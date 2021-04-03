Rails.application.routes.draw do

  devise_for :users, :controllers => {
  :registrations => 'users/registrations',
  :sessions => 'users/sessions'   
} 

devise_scope :user do
  get "user/:id", :to => "users/registrations#detail"
  get "signup", :to => "users/registrations#new"
  get "login", :to => "users/sessions#new"
  get "logout", :to => "users/sessions#destroy"
end

  get 'budgets/new' => 'budgets#new'
  get 'budgets' => 'budgets#index'
  get 'budgets/:id' => 'budgets#show'
  get 'budgets/edit' => 'budgets#edit'
  post 'budgets/create' => 'budgets#create'

  get 'incomes_and_expenses/new' => 'incomes_and_expenses#new'
  get 'incomes_and_expenses/index' => 'incomes_and_expenses#index'
  get 'incomes_and_expenses/:id' => 'incomes_and_expenses#show'
  get 'incomes_and_expenses/edit' => 'incomes_and_expenses#edit'
  post 'incomes_and_expenses/create' => 'incomes_and_expenses#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
