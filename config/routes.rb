Rails.application.routes.draw do
  resources :dishes, only: [:index, :show, :create, :update, :destroy, :proper_name_case]
  resources :holidays, only: [:index, :show, :create, :update, :destroy, :proper_name_case]


end
