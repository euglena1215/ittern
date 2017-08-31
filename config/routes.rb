Rails.application.routes.draw do
  root "companies#index"

  devise_for :users
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end

  resources :companies
end
