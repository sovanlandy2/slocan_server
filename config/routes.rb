Rails.application.routes.draw do
  
  namespace :api do 
    namespace :v1 do 
      resources :users    
      resources :photos
      resources :votes 
    end
  end

  resources :venues
  
end
