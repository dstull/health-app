Rails.application.routes.draw do

  resources :call_logs
  devise_for :users, controllers: {
      sessions: 'users/sessions'
  }

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'members#index'
  resources :members
  resources :call_logs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
