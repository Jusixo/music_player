Rails.application.routes.draw do
  resources :abouts
  resources :playlists
  resources :mixtapes

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'pages/landing'
  root 'pages#landing'

  mount Shrine::DownloadEndpoint => "/attachments"

  get    '/auth/:provider'          => 'omniauth#auth', as: :auth
  get    '/auth/:provider/callback' => 'session#create'
  get    '/auth/failure'            => 'session#failure'

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  get '/logout' => 'session#destroy'

end
