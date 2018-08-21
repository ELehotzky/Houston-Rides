Rails.application.routes.draw do
  


  resources :users, :bikes, :events, :trails, :types, :ratings, :sign_ups

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
