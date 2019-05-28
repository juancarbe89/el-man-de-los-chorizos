Rails.application.routes.draw do

  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do

    devise_for :customers
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
  # match '*path', to: redirect("/#{I18n.default_locale}/%{path}")
  # match '', to: redirect("/#{I18n.default_locale}")
end
