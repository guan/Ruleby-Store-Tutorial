ActionController::Routing::Routes.draw do |map|
  
  map.login "login", :controller => "user_sessions", :action => "new"
  map.logout "logout", :controller => "user_sessions", :action => "destroy"

  map.resources :user_sessions

  map.resources :users

  map.resources :products
  map.resources :categories
  map.root :products
  map.connect ':controller/:action/:id' 
end
