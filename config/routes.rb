Rails.application.routes.draw do
  
  namespace :api do 
    namespace :v1 do 
      resources :users    
      resources :photos
      resources :votes 
      resources :itineraries do 
        collection do 
          get :query
        end
      end
    end
  end

  resources :venues
  
end
