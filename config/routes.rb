Rails.application.routes.draw do
  resources :dropdown_options
  resources :seasons
  resources :user_registrations
  resources :users
  devise_for :users
  devise_for :admins
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
