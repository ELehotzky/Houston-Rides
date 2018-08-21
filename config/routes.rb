Rails.application.routes.draw do
  


  resources :users, :bikes, :events, :trails, :types
  get 'sign_ups/new'
  get 'rating/new'
  get 'rating/edit'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
