class Faraday::Api1Controller < ApplicationController
  def index
    response = ExampleFaraday.get
    render json: response.body
  end

  def create
    response = ExampleFaraday.post(params.require(:data).permit(:name))
    render json: response.body
  end

  def update
    response = ExampleFaraday.put
    render json: response.body
  end

  def destroy
    response = ExampleFaraday.delete
    render json: response.body
  end
end
