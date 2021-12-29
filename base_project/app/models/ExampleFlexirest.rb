class ExampleFlexirest < BaseRequest

  before_request do |name, request|
    if name == :create
      request.body = request.post_params.to_json
    end
  end

  get :all, '/flexirest/api2'
  post :create, '/flexirest/api2'
  put :update, '/flexirest/api2/1'
  delete :delete, '/flexirest/api2/1'

end