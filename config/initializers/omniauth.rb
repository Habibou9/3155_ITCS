OmniAuth.config.logger = Rails.logger
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '996616246419-oohcs4gc8kc0998qbtm15qmg0n766u56.apps.googleusercontent.com', 'keON3zW_7yHDtBsU5YCxKwDX', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end