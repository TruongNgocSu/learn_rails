Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :faraday, defaults: { format: :json } do
    resources :api1
    resources :api2
  end
end
