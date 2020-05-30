Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do  
   get '/users/sign_out' => 'devise/sessions#destroy'     
end

  resources :docs

  authenticated :user do
  	root "docs#index", as: "authenticated_root"
  end
  
  get 'welcome/index'
  root 'welcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
