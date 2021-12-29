class Flexirest::Api1Controller < ApplicationController
  def index
    response = ExampleFlexirest.all
    render json: response.to_json
  end

  def create
    response = ExampleFlexirest.create(params.require(:data).permit(:name))
    render json: response.to_json
  end

  def update
    response =  ExampleFlexirest.update
    render json: response.to_json
  end

  def destroy
    response = ExampleFlexirest.delete
    render json: response.to_json
  end
end
