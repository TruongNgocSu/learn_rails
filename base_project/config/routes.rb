Rails.application.routes.draw do
  namespace :log, defaults: { format: :json } do
    resources :api4
  end
end
