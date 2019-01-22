Rails.application.routes.draw do
  
  resources :projects 
  	 resources :tasks
  	
  get 'organization/index'
  get 'organization/new'
  get 'organization/edit'
  get 'organization/delete'
  devise_for :users
  root to: "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
