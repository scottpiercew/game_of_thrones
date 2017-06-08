Rails.application.routes.draw do
  devise_for :users
  root to: "houses#index"

  resources :houses do
    resources :characters, except: [:new]
  end

  resources :characters
end
