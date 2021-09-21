Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users, path: '', path_names: {
    sign_in: 'login',
    sign_out: 'logout'
  }
  resources :salons, only: [:show]

  resources :salon_services, only: [] do 
    resources :appointments, only: [:new, :create]
  end


  
  resources :pets, only: [:index, :show, :edit, :update]

  # get 'salons/:salon_id/appointments/new'

end
