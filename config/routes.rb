OmniDemo::Application.routes.draw do
  
  root :to => "home#index"
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :demos
  put "demo/add_page_view", :to => "demos#add_page_view", :as => "add_page_view_demo"
  
  resources :sessions, :only => [:create]
  
  namespace "charts" do
    resources :tetris_bar, :only => [:index]
  end
  
  namespace "exports" do
    resources :generate_csv, :only => [:index] do
      collection do
        get "export"
      end
    end
  end
  
end
