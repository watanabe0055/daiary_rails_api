Rails.application.routes.draw do
  #mount_devise_token_auth_for 'User', at: 'auth'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  namespace :api do
    namespace :v1 do
      get 'diary/test', to: 'diary#test'
      get 'diary/search', to: 'diary#search'
      resources :diary
      resources :emotion
      mount_devise_token_auth_for 'User', at: 'auth'
      #mount_devise_token_auth_for 'User', at: 'auth', controllers: {
      #  registrations: 'api/v1/auth/registrations'
      #}
    end
  end
end
