# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  root 'clients#index'

  resources :users do
    get :edit_password, on: :member
    patch :update_password, on: :member
  end
  resources :clients do
    resources :projects do
      resources :timelogs
    end
  end

  resources :payments
  namespace :admin do
    resources :users do
      patch :toggle_status, on: :member
      patch :make_manager, on: :member
    end
  end
end
