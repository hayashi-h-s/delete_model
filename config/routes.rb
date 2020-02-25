Rails.application.routes.draw do
  
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    # :sessions => 'users/sessions'
  } 

  get 'sessions/new'
  get 'users/new'
  root 'home#top'

  resources :folders do
    # resources :posts
  end
  
  resources :users, only: [:index, :show]
  
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'

end