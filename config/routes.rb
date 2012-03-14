OmniDemo::Application.routes.draw do
  namespace "charts" do
    resources :tetris_bar, :only => [:index]
  end
end
