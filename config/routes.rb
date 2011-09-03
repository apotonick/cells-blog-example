Blog::Application.routes.draw do
  #match ":controller/tag", :to => "posts#tag"
  
  resources :posts do
    resources :comments
  end
  
  root :to => "posts#index"
  
  resources :user_sessions
  
  match 'login' => "user_sessions#new"
  
  
end
