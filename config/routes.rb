Rails.application.routes.draw do
  # view for welcome page
  get 'welcome/index'
  # view for search results
  #get '/search' => 'courses#search', :as => 'search-page'
  get '/course' => 'courses#search'

  resources :courses do
    resources :reviews
  end

  resources :professors do
    resources :reviews
  end
  
  resources :reviews

  

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end