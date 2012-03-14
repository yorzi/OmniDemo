OmniDemo::Application.routes.draw do
  root :to => "home#index"
  
  namespace "charts" do
    resources :tetris_bar, :only => [:index]
  end
end
