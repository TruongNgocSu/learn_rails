class Flexirest::Api3Controller < ApplicationController
  def index
    p 123
    render json: {"name": "123"}
  end

  def show
    render json: {}
  end
end
