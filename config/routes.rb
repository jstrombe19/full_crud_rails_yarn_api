Rails.application.routes.draw do
  resources :yarns, only: [:index, :show, :create, :update, :destroy]
  # resources :yarns, except: [:new, :edit, :upate, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
