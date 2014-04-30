Rails.application.routes.draw do
  root 'control_rooms#show'
  resource :control_room, only: [ :show]
  resources :teams, only: [ :new, :create, :destroy]
  resources :mutants, only: [ :new, :create, :update, :destroy]
  resources :tasks, only: [ :new, :create, :update, :destroy]
end
