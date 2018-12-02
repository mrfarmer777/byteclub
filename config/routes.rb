Rails.application.routes.draw do
  resources :members, only: [:new, :create, :show, :edit, :update]
  resources :meeting, only: [:show, :index]
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root "welcome#home"
    namespace :admin do 
      resources :members
      resources :meetings
    end
    
    
    post "/login" => "sessions#create"
    get "/logout" => "sessions#destroy"
end
