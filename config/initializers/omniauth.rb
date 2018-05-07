OmniAuth.config.logger = Rails.logger
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '680233321048-jb33dp2u4empn6hsuqti9gj5ket2ar2k.apps.googleusercontent.com', 'CPszOp0o-pn0u5P7LHN_o8qm', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end