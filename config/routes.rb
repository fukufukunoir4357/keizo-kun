Rails.application.routes.draw do
  root 'pages#index'
  resources :pages
  
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions',
    confirmations: 'confirmations',
    omniauth_callbacks: 'users/omniauth_callbacks'
    }
  
  devise_scope :user do
    get "sign_in" => "users/sessions#new"
    get "/users/sign_out"  => "users/sessions#destroy" 
  end
  
  resources :users
  resources :sites do
    resources :courses
  end
  
  resources :users do
  resources :favorites
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
