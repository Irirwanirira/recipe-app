Rails.application.routes.draw do
  resources :recipes
  resources :recipe_foods
  resources :foods
  resources :inventory_foods
  resources :inventories
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  
end
