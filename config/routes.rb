Rails.application.routes.draw do
  root "reviews#index"

  devise_for :users
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end

  resources :companies
  resources :users, except: [:new, :create]
  resources :reviews
  resources :comments
  resources :benefits

  namespace :admin do
    root "users#index"
    resources :users, except: [:new, :create]
    resources :companies
    resources :reviews
  end
end
