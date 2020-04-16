Rails.application.routes.draw do
  root to: 'shelters#index'
  resources :users
  get '/adoptions', to: 'adoptions#index'
  post '/adoptions_approve/:id', to: 'adoptions#approve'
  delete '/adoption_destroy/:id', to: 'adoptions#destroy'
  resources :animals do
    resources :adoptions
  end
  # resources :shelters, only: [:index]#, :analytics]
  get '/shelters/analytics', to: 'shelters#analytics'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
