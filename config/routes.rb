Blog::Application.routes.draw do |map|
  resources :posts do
    resources :comments
  end
  
  root :to => "posts#index"
end
