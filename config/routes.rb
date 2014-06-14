Rails.application.routes.draw do

  #Authientication
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  #/campaigns/1/videos/
  resources :admins
  resources :users
  resources :campaigns do
    resources :donations
    resources :videos
  end


  root 'welcome#index'
  get '/about', to: 'welcome#about'

end
