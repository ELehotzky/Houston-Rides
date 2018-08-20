Rails.application.routes.draw do
  

  get 'sign_ups/new'
  get 'rating/new'
  get 'rating/edit'
  resources :users, :bikes, :events, :trails, :types

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
