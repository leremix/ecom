Rails.application.routes.draw do

  resources :charges, only:[:new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'

  get 'products', to: 'products#index', as: 'products'

  get 'product/:id', to: 'products#show', as: 'product_show'

  get 'admin/dashboard', to: 'backend#index', as: 'backend_index'

  get 'admin/products', to: 'backend/products#index', as: 'backend_products_index'

  get 'cart', to: 'carts#show', as: 'current_user_cart'

  post 'cart/:id', to: 'carts#add_to_cart', as: 'add_to_cart'

  delete 'cart/:id', to: 'carts#remove_from_cart', as: 'remove_from_cart'

  get 'users/:id', to: 'users#show', as: 'user_profil_path'

  devise_for :users,
    path: '',
    controllers: {
       sessions: "users/sessions",
       registrations: "users/registrations" },
    path_names: {
      sign_in: 'login',
      sign_out: 'logout',
      sign_up: 'register',
      edit: 'settings'
    }

  devise_for :admins,
    :skip => [:registrations, :passwords],
    path: 'admin',
    controllers: { sessions: "admins/sessions" },
    path_names: {
      sign_in: 'login',
      sign_out: 'logout'
    }

end
