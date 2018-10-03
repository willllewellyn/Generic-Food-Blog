# frozen_string_literal: true

Rails.application.routes.draw do
  get 'homepage/index'

  resources :articles do
    resources :article_comments
  end

  resources :recipes do
    resources :recipe_comments
  end

  root 'homepage#index'
end
