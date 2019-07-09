Rails.application.routes.draw do
  resources :scores, only: [:index, :show, :create]
  get '/total', to: 'scores#total'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
