Rails.application.routes.draw do
  
  devise_for :users
  get 'sessions/new'
  get 'users/new'
  root 'home#top'

  resources :folders do
    # resources :posts
  end
  
  resources :users
  
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'

end