Rails.application.routes.draw do
  resources :branches
  resources :employees
  devise_for :users
  resources :departments
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "employees#index"
  get 'home/help'
  get 'home/docs'
end
