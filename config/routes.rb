Rails.application.routes.draw do
  root to: "houses#index"

  resources :houses do
    resources :characters
  end

  resources :characters, only: [:index]

end
