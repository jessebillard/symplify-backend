Rails.application.routes.draw do
  
  resources :notes, only: [:create, :update, :destroy]
  resources :users, only: [:create, :show]

end
