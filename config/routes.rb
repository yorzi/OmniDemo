OmniDemo::Application.routes.draw do
  
  root :to => "home#index"
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :demos
  resources :sessions, :only => [:create]
  
  namespace "charts" do
    resources :tetris_bar, :only => [:index]
  end
end
