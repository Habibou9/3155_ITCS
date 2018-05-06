OmniAuth.config.logger = Rails.logger
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '680233321048-f5lk00k8nh7rqiqm118mleseh5c2p1gn.apps.googleusercontent.com', '2HTT02GwAohYEq928XHe5Mrf', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end