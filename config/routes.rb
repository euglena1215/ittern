Rails.application.routes.draw do
  resources :comments
  resources :reviews
  root "companies#index"

  devise_for :users
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end

  resources :companies
  resources :users, except: [:new, :create]
end
