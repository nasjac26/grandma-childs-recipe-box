Rails.application.routes.draw do
  resources :dishes only: [:index, :show]
  resources :holidays only: [:index, :show]
end
