Rails.application.routes.draw do
  root to: 'cocktails#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #get '/cocktails', to: 'cocktails#index'"
  # delete '/restaurants/:id', to: 'restaurants#destroy'
  # post '/restaurants', to: 'restaurants#create'"
  # get '/restaurants/new', to: 'restaurants#new'"
  # get '/restaurants/:id/edit', to: 'restaurants#edit'"
  # get '/restaurants/:id', to: 'restaurants#show'"
  # patch '/restaurants/:id', to: 'restaurants#update'"
  resources :cocktails, only: [:index, :show, :new, :create]

end
