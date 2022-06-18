Rails.application.routes.draw do
  
  resources :canales
  resources :pares
  resources :relojes
  resources :numeros
  resources :opciones
  root "home#index"

  get 'home/cifra', as: 'cifra'
  get 'home/descifra', as: 'descifra'
  get 'home/todo', as: 'todo'
  get 'home/explica', as: 'explica'
end
