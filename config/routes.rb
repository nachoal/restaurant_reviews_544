Rails.application.routes.draw do
  resources :restaurants do
    resources :reviews, only: [ :new, :create ]

    collection do
      # restaurants/top
      get :top
    end

    # One piece of data of the resource
    member do
      get :chef
    end
  end

  resources :reviews, only: [:destroy]
end
