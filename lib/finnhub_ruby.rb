require 'finnhub_ruby'
require_relative '../.env/.finnhub_api_key'


FinnhubRuby.configure do |config|
    config.api_key['token'] = FINNHUB_API_KEY
end

finnhub_client = FinnhubRuby::DefaultApi.new
