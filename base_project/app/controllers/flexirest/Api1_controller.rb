class Flexirest::Api1Controller < ApplicationController
  def index
    response = ExampleFlexirest.all
    render json: response.to_json
  end

  def show
    ex = ExampleFlexirest.find(params[:id])
    render json: ex.to_json
  end

  def create
    # response = ExampleFlexirest.create(params.require(:data).permit(:name))
    # render json: response.to_json
    #or
    # use like activeRecord
    param = filter_arguments
    ex = ExampleFlexirest.new
    ex.name = param[:name]
    ex.type = param[:type]
    ex.create
    render json: ex.to_hash
  end

  def update
    # response = ExampleFlexirest.update
    # render json: response.to_json
    #  #or
    # use like activeRecord
    param = filter_arguments
    example = ExampleFlexirest.new
    example.id = params[:id]
    example.name = param[:name]
    example.type = param[:type]
    example.update
    render json: example.to_hash
  end

  def destroy
    # response = ExampleFlexirest.delete
    # render json: response.to_json
    # or
    # use like activeRecord
    example = ExampleFlexirest.new
    example.id = params[:id]
    example.delete
  end

  private

  def filter_arguments
    params.require(:data).permit(:name, :type)
  end
end
