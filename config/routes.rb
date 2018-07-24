Rails.application.routes.draw do
  root "pages#home"
  get 'pages/home', to: 'pages#home'

  resources :books



  get '/signup', to: 'users#new'
  resources :users, except: [:new]

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
 get 'lend/cart'
  get '/lend/options', to: 'lend#options'
  get '/categories', to: 'lend#categories'
  get '/authors', to: 'lend#authors'
  get 'lend/authorshelf', to: 'lend#authorshelf'
  get 'lend/categoryshelf', to: 'lend#categoryshelf'

end
