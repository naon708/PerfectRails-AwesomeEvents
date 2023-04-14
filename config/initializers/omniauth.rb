Rails.application.config.middleware.use OmniAuth::Builder do
  if Rails.env.development? || Rails.env.test?
    provider :github,
      Rails.application.credentials.github[:client_id],
      Rails.application.credentials.github[:cliend_secret]
  else
    provider :github,
      Rails.application.credentials.github[:production][:client_id],
      Rails.application.credentials.github[:production][:cliend_secret]
  end
end
