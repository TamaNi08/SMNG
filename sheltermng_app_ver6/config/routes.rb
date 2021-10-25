Rails.application.routes.draw do
  get "top" => "evacuation#top"
  get "evacuation/map" => "evacuation#map"
  get "evacuation/table" => "evacuation#table"
  # get 'users/new'
  resources :users
  root to: 'shelters#index'
  resources :shelters
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end