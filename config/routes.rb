# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :accounts

  as :account do
    resources :favorite
  end

  resources :movies
  resources :podcasts

  root to: 'movies#index'
end
