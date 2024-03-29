Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :api do 
    namespace :v1 do
      resources :foods, only: [:index, :show, :create]
      resources :users, only: [:index, :show, :create, :new]
      resources :userfoods
    end
  end
  
end
