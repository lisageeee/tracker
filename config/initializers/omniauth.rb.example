OmniAuth.config.logger = Rails.logger

FACEBOOK_APP_ID = 'yourid'
FACEBOOK_APP_SECRET = 'yoursecret'

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, FACEBOOK_APP_ID, FACEBOOK_APP_SECRET
end
