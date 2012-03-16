OmniDemo::Application.routes.draw do
  resources :demos

  root :to => "home#index"
  
  namespace "charts" do
    resources :tetris_bar, :only => [:index]
  end
end
