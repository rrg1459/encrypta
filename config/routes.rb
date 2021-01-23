Rails.application.routes.draw do
  
  resources :canales
  resources :pares
  resources :relojes
  resources :numeros
  resources :opciones
	root "opciones#index"

  # get 'home/index', as: 'home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
