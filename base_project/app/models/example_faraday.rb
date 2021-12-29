class ExampleFaraday < BaseRequest
  BASE_URL = "http://localhost:3000"

  class << self
    def connect
      Faraday.new(BASE_URL) do |f|
        f.request :multipart
        f.request :url_encoded
        f.adapter Faraday.default_adapter
        f.options.timeout = 10
        f.options.open_timeout = 5
        f.headers["Content-Type"] = "application/json"
      end
    end

    def get
      connect.get do |req|
        req.url '/faraday/api2'
      end
    end

    def post(param)
      connect.post do |req|
        req.url '/faraday/api2'
        req.body = param.to_json
      end
    end

    def put
      connect.put do |req|
        req.url '/faraday/api2/1'
      end
    end

    def delete
      connect.delete do |req|
        req.url '/faraday/api2/1'
      end
    end
  end
end
