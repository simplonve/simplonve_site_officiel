Rails.application.routes.draw do

  #Authentification
  get 'signup' => 'users#new'
  resources :users
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'

  root 'home#index'
  get 'home/index' => 'home#index'

  #Projet Blog
  resources :articles do
    resources :comments
  end 
  mount Ckeditor::Engine => '/ckeditor'


  #Projet Réservation-Intervenants
  get '/intervenants' => 'calendrier#show'
  get '/intervenants/reservation/:day-:month' => 'calendrier#reservation'
  post '/intervenants/reservation' => 'calendrier#create'

end
