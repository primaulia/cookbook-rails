Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'

  # all the 7 restful routes for meals
  resources :meals, only: [:index, :show, :new, :create] do
    collection do
      get :healthy
    end

    resources :comments, only: [:new, :create]
  end

  # get /salons/:id
  resources :salons, only: [:show] do
    resources :pets, only: [:create]
  end

  resources :pets, only: [:show]





























  # see all customers
  get 'customers', to: 'customers#index'
  # show the form to create new customer
  get 'customers/new', to: 'customers#new', as: :new_customer
  # see one customer
  get 'customers/:id', to: 'customers#show', as: :customer

  # show the edit form
  get 'customers/:id/edit', to: 'customers#edit', as: :edit_customer
  # process the form
  patch 'customers/:id', to: 'customers#update', as: :update_customer

  delete 'customers/:id', to: 'customers#destroy', as: :delete_customer


  # process the form
  post 'customers', to: 'customers#create', as: :create_customer

  # login
  get 'login', to: 'pages#login'

end
