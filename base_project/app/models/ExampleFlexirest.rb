class ExampleFlexirest < BaseRequest

  before_request do |name, request|
    if name == :create
      request.body = request.post_params.to_json
    end
  end

  get :all, '/flexirest/api2'
  get :find, '/flexirest/api2/:id', :lazy => [exampleFlexirest2: { url: "/flexirest/api2"}]
  # get :find, '/flexirest/api2/:id'
  post :create, '/flexirest/api2'
  put :update, '/flexirest/api2/:id'
  delete :delete, '/flexirest/api2/:id'

end