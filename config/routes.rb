Rails.application.routes.draw do

	root "users#index"
	resources :users, :bikes, :events, :ratings, :sign_ups
	resources :types, only: [:show]
	resources :trails, only: [:index, :show]
	resources :sessions, only: [:new]
	get "/signup", to: "users#new"
	get "/login", to: "sessions#new"
	post "sessions", to: "sessions#create"
	delete "sessions", to: "sessions#destroy" 
	
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
