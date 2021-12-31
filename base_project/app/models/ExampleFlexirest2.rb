class ExampleFlexirest2 < BaseRequest
  # lazy_load!
  get :all, '/flexirest/api3'
  get :find, '/flexirest/api3/:id'
  post :create, '/flexirest/api3'
  put :update, '/flexirest/api3/:id'
  delete :delete, '/flexirest/api3/:id'

end