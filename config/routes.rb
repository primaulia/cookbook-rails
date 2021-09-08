Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # see all customers
  get '/customers', to: 'customers#index'

  # see one customer
  get '/customers/:id', to: 'customers#show'
end
