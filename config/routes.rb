Blog::Application.routes.draw do |map|
  #match ":controller/tag", :to => "posts#tag"
  match ":controller/render_event_response", :to => "#render_event_response", :as => "apotomo_event" ### FIXME: how can Apotomo handle that?
    
  resources :posts do
    resources :comments
  end
  
  root :to => "posts#index"
  
  resources :user_sessions
  
  match 'login' => "user_sessions#new"
  
  
end
