Rails.application.routes.draw do
  get 'bookings/new'
  get 'bookings/create'
  get 'bookings/index'
  get 'bookings/update'
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :bookings, only: [:new, :create, :index, :update]
  resources :jetpacks, only: %i[index show new create]
end
