Rails.application.routes.draw do
  resources :users
  resources :animals do
      resources :adoptions
  end
  resources :shelters, only: [:index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
