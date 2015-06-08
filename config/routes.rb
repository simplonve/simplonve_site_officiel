Rails.application.routes.draw do
  root 'home#index'

  get 'home/index' => 'home#index'


  #Projet Réservation-Intervenants
  get '/intervenants' => 'calendrier#show'
  get '/intervenants/reservation/:day-:month' => 'calendrier#reservation'
  post '/intervenants/reservation' => 'calendrier#create'

end
