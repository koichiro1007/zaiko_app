Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions:      'users/sessions',
    passwords:     'users/passwords',
    registrations: 'users/registrations'
}
  root to: 'stocks#index'
  resources :stocks
  resources :users, only: :show
end
