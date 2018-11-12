# frozen_string_literal: true

Rails.application.routes.draw do
  get 'their_recipes/chocolate_cake'
  get 'their_recipes/baked_potatoes'
  get 'content/chocolate_cake'
  get 'content/baked_potatoes'
  get 'legal/privacy_policy'
  get 'legal/terms_of_use'
  get 'about/contacts'
  get 'about/other_contacts'
  get 'about/health_and_safety'
  get 'homepage/index'

  resources :articles do
    resources :article_comments
  end

  resources :recipes do
    resources :recipe_comments
  end

  resources :their_recipes

  resources :blogs do
    resources :blog_comments
  end

  resources :about

  root 'homepage#index'
end
