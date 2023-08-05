Rails.application.routes.draw do
  resources :clubs
  get 'current_user', to: 'current_user#index'
  devise_for :users, path: '', path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    registration: 'signup'
  },
  controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
  }
  # get with param for season_id
  get 'registrations', to: 'user_registrations#season'

  post 'dropdown_options', to: 'dropdown_options#options'
  get 'clubs', to: 'clubs#index'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "application#index"
end
