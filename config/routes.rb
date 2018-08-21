Rails.application.routes.draw do
  resources :users
  resources :transactions
  resources :actual_expenses
  resources :budget_expenses

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
