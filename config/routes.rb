Rails.application.routes.draw do
  
  resources :canales
  ActiveAdmin.routes(self)
  resources :pares
  resources :relojes
  resources :numeros
	root "home#index"

  get 'home/index', as: 'home'
  resources :opciones
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
