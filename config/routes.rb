Rails.application.routes.draw do

  #Authentification
  get 'signup' => 'users#new'
  resources :users
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'

  root 'home#index'
  get 'home/index' => 'home#index'
  get 'home/page_actions' =>'home#page_actions'
  get 'promo' =>'home#promo'

  resource :sessions
  #Projet Blog
  resources :articles do
    resources :comments
  end 


  #Projet Réservation-Intervenants
  get '/intervenants' => 'calendrier#show'
  get '/intervenants/reservation/:day-:month' => 'calendrier#reservation'
  post '/intervenants/reservation' => 'calendrier#create'

end
