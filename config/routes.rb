Rails.application.routes.draw do
  get 'welcome/index'
  
  resources :courses do
    resources :reviews
  end
  
  resources :professors do
    resources :reviews
  end
  
  #resources :reviews
  
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
