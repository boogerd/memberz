Rails.application.routes.draw do
  resources :budgets
  resources :periods
  resources :transactions do
    collection do
      post :import
    end
  end
  resources :memberships
  resources :membership_types
  resources :accounts
  resources :member_groups
  resources :invoices
  resources :members do
    collection do
      post :import
    end
  end
  resources :organisations
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "articles#index"
end
