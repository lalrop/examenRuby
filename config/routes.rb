Rails.application.routes.draw do
  root "buildings#index"
  resources :buildings do
    resources :apartaments
  end
end
