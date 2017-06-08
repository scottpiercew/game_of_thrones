Rails.application.routes.draw do
  root to: "houses#index"

  resources :houses do
    resources :characters, except: [:new]
  end

  resources :characters
end
