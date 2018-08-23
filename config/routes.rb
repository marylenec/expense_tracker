Rails.application.routes.draw do
  resources :users
  resources :transactions
  resources :categories
  resources :periods
  resources :account_types
  resources :budgets
  resources :dashboards
  get 'about', to: "static#about"
  # get '/search', to: "budgets#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
