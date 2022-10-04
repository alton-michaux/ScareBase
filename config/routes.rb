# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :accounts

  as :account do
    resources :favorite
  end

  root to: 'movies#index'
end
