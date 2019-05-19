Rails.application.routes.draw do
  devise_for :customers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#home'

  resources :customers, only: [:index, :show, :edit, :update] do
    resources :orders, only: [:index, :new, :create, :edit, :update]
  end

  # General
  get '/about', to: 'pages#about', as: :about
  get '/how', to: 'pages#how', as: :how

  # Customer
  get '/myprofile', to: 'customers#edit', as: :edit_profile
  patch '/myprofile', to: 'customers#update', as: :update_profile
  get '/myorders', to: 'orders#index', as: :my_orders

  # DeliveryGuy
  get '/orders/:id/placed', to: 'orders#placed', as: :placed_order
  get '/orders/:id/delivering', to: 'orders#delivering', as: :delivering_order
  get '/orders/:id/delivered', to: 'orders#delivered', as: :delivered_order
end
