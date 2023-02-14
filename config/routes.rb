Rails.application.routes.draw do
  resources :add_user_to_recipes
  resources :recipes
  resources :add_recipe_to_recipe_foods
  resources :add_food_to_recipe_foods
  resources :recipe_foods
  resources :foods
  resources :add_user_to_inventories
  resources :add_inventory_to_inventory_foods
  resources :add_food_to_inventory_foods
  resources :inventory_foods
  resources :inventories
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
