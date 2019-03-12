# frozen_string_literal: true

Rails.application.routes.draw do
  resources :cocktail_ingredients
  resources :cocktails
  resources :ingredient_users
  resources :ingredients
  # RESTful routes
  resources :examples, except: %i[new edit]

  # Custom routes
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'
end
