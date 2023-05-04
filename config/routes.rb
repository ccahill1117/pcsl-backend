Rails.application.routes.draw do
  resources :dropdown_options
  resources :seasons
  resources :user_registrations
  # resources :users
  # devise_for :users
  # devise_for :admins
  devise_for :users,
  defaults: { format: :json },
  path: '', path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    registration: 'signup',

  },
  controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "application#index"
end
