Rails.application.routes.draw do
  root to: 'tweets#about'
  
  resources :tweets do
    collection do
      post :confirm
    end
  end
  
end
