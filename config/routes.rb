Rails.application.routes.draw do
  devise_for :customers
  devise_for :admins

  namespace :admin do
    root to: 'home#top'
    resources :items
    resources :genres, only: [:index, :create, :edit, :update]
    resources :customers, only: [:index, :show, :edit, :update]
    get 'order_items/show'
    get 'orders/update'
    get 'order_items/update'
  end

  scope module: :customers do
    root to: 'homes#top'
    resources :items
    resources :cart_items
    resources :orders
    resources :addresses

  end




end
