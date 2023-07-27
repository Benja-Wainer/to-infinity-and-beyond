Rails.application.routes.draw do
  get 'reviews/new'
  get 'bookings/new'
  get 'bookings/create'
  get 'bookings/index'
  get 'bookings/update'
  get 'bookings/destroy'
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :jetpacks, only: %i[index show new create] do
    resources :reviews, only: [:new, :create]
    resources :bookings, only: %i[index create]
  end
  resources :bookings, only: %i[edit update destroy]

  resources :bookings, only: [:update]

  namespace :owner do
    resources :bookings, only: :index
  end
end
