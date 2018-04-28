OmniAuth.config.logger = Rails.logger
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '1010168988200-6h36v1g885stgpjulhll6nfboku15b1m.apps.googleusercontent.com', 'GlhZoMmj8fhTw8cCW7iWqYvA', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end