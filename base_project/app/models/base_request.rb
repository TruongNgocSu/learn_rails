class BaseRequest < Flexirest::Base

  base_url "http://localhost:3000"
  request_body_type :json

  faraday_config do |f|
    f.request :url_encoded
    f.request :multipart
    f.options.timeout = 15
  end
end
