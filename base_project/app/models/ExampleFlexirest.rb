class ExampleFlexirest < BaseRequest

  before_request do |name, request|
    if name == :create
      request.body = request.post_params.to_json
    end
  end

  get :all, '/flexirest/api2'
  get :find, '/flexirest/api2/:id'
  # get :find, '/flexirest/api2/:id'
  post :create, '/flexirest/api2'
  put :update, '/flexirest/api2/:id'
  delete :delete, '/flexirest/api2/:id'
  get :seach, '/flexirest/api2', fake: :fake_data

  def fake_data
    p 123
    {data:{
      name:"test 123",
      type:1
    }}
  end

end