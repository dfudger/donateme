Rails.application.routes.draw do

  get 'users/edit'

  get 'users/destroy'

  get 'users/show'

  get 'users/create'

  get 'users/update'

  get 'users/index'

  get 'users/new'

  #/campaigns/1/videos/
  resources :admins
  resources :users
  resources :campaigns do
    resources :donations
    resources :videos
  end

  #Authientication
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  root 'welcome#index'


end
