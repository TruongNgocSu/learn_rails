Rails.application.routes.draw do
  namespace :flexirest, defaults: { format: :json } do
    resources :api1
    resources :api2
    resources :api3

    get 'seach', to: 'api1#seach'
  end
end
