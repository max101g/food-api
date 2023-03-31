Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'https://642744e0fe257522f5a45050--soft-bombolone-5f8259.netlify.app'
    resource '*', headers: :any, methods: [:get, :post, :put, :patch, :delete, :options, :head], credentials: true
  end
end
