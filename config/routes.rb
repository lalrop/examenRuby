Rails.application.routes.draw do
  root "buildings#index"
  get '/buildings/:building_id/apartaments', to:'apartaments#indexBuilding', as: 'apartamentBuildings' 
  resources :buildings 
  resources :apartaments
end
