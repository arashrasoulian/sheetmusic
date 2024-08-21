
Rails.application.routes.draw do
  get 'private/test'

  devise_for :users,
    path: '',
    path_names: {
      sign_in: 'login',
      sign_out: 'logout',
      registration: 'signup'
    },
    controllers: {
      sessions: 'users/sessions',
      registrations: 'users/registrations'
    }
    namespace :api do
      namespace :v1 do
        resources :scores, only: [:create, :get]
      end
    end

    get 'profile', to: 'pages#profile'

end
