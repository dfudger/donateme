Rails.application.routes.draw do

  get 'charges/new'

  get 'charges/create'

  get 'images/new'

  get 'images/create'

  get 'images/update'

  get 'images/edit'

  get 'images/destroy'

  get 'images/index'

  get 'images/show'

  #Authientication
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  #/campaigns/1/videos/
  resources :admins
  resources :users
  resources :campaigns do
    resources :donations
    resources :videos
    resources :images
  end
  resources :charges


  root 'welcome#index'
  get '/about', to: 'welcome#about'

end
