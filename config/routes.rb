Rails.application.routes.draw do

  root to: 'pages#home'
  devise_for :users

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :musicians, only: [ :index, :show, :edit, :update] do
    resources :conversations, only: [ :new, :create ]
  end

  resources :conversations, only: [ :index, :show ] do
    resources :messages , only: [ :create ]
  end

  resources :bands, only: [:index, :show, :edit, :update] do
    member do
      post :add_musician
    end
  end
end
