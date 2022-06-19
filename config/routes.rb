Rails.application.routes.draw do
  
  # resources :encryptas
  # resources :canales
  # resources :pares
  # resources :relojes
  # resources :numeros
  # resources :opciones
  root "home#index"

  get '/cifra', to: 'home#cifra', as: 'cifra'
  get '/descifra', to: 'home#descifra', as: 'descifra'
  get '/todo', to: 'home#todo', as: 'todo'
  get '/explica', to: 'home#explica', as: 'explica'

  post '/procesa_cifrado', to: 'home#procesa_cifrado', as: 'procesa_cifrado'
  post '/procesa_descifrado', to: 'home#procesa_descifrado', as: 'procesa_descifrado'

  # post 'home/procesa_cifrado', as: 'procesa_cifrado'
  # post 'home/procesa_descifrado', as: 'procesa_descifrado'
end
