# frozen_string_literal: true

Rails.application.routes.draw do
  resources :pages
  get 'taxes/index'
  get 'taxes/view'
  get 'employee/index'
  get 'employee/view'
  get 'customer/index'
  get 'customer/view'
  get 'product/index'
  get 'product/view'
  get 'winery/index'
  get 'winery/view'
  get 'variety/index'
  get 'variety/view'
  get 'region_made/index'
  get 'region_made/view'
  get 'province_made/index'
  get 'province_made/view'
  get 'contry_made/index'
  get 'contry_made/view'

  resources :tax
  resources :employee
  resources :customer
  resources :product
  resources :winery
  resources :variety
  resources :region_made
  resources :province_made
  resources :country_made

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'product#index'
end
