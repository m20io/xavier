Rails.application.routes.draw do
  root 'control_rooms#show'  
  resource :control_room, only: [:show]
  resources :mutants, only:[:new, :create, :destroy]
end
