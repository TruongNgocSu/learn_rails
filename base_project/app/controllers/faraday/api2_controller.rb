class Faraday::Api2Controller < ApplicationController
  def index
    render json: data
  end

  def create
    render json: params.permit("name")
    end

  def update
    render json: updated_data
  end

  def delete
    render json: {}
  end

  private

  def updated_data
    {
      color: "red",
      value: "#f00"
    }
  end

  def index_data
    { data: [
      {
        color: "red",
        value: "#f00"
      },
      {
        color: "green",
        value: "#0f0"
      },
      {
        color: "blue",
        value: "#00f"
      },
      {
        color: "cyan",
        value: "#0ff"
      },
      {
        color: "magenta",
        value: "#f0f"
      },
      {
        color: "yellow",
        value: "#ff0"
      },
      {
        color: "black",
        value: "#000"
      }
    ] }
  end
end
