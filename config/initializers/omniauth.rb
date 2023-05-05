require 'omniauth/strategies/events360'

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :developer if Rails.env.development?
  provider :events360, 
  ENV['NXT_APP_ID'], 
  ENV['NXT_APP_SECRET'],
  scope: 'public', 
  strategy_class: OmniAuth::Strategies::Events360
end