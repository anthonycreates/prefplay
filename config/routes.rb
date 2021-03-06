Prefplay::Application.routes.draw do
  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users, :only => [:show, :index]
  
  resources :questions do
    resources :votes
  end
  
  resources :choices
  resources :guesses
end
