Rails.application.routes.draw do
  resources :playlists
  resources :mixtapes
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'pages/landing'
  root 'pages#landing'


end
