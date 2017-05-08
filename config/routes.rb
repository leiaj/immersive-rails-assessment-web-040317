Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :guests
# , only: [:index, :show, :new]
  # recources :sessions
  resources :episodes
  resources :appearances
  get '/sessions/new' => 'sessions#new'
  post '/sessions/new' => 'sessions#create'
  # , only: [:index, :show, :new]
  #
  # get '/guests' => 'guests#index'
  # get '/guests/:id', to 'guests#show', as: 'guest'



end
