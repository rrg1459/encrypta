Rails.application.routes.draw do
  
  resources :encryptas
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

  post 'home/procesa', as: 'procesa'
end
